import os
import sys
import re


extension = '.wav'
regex = r'(.+) - (.+) \((\d{2}) (.+)\)(\.wav)'


def start():
    path = os.path.dirname(os.path.realpath(sys.argv[0]))
    result = walk(path)
    print("Folders scanned: %s" %(result['folder_count']))
    print("Music files scanned: %s" %(result['file_count']))
    print("Files to rename: %s" %(result['possible_renames']))
    print("Files renamed: %s" %(result['rename_count']))
    return True


def inform(msg, state):
    if state['verbose']:
        print(msg)


def prompt(filename, state):
    print("Processing file: %s" %(filename))
    response = input("- Rename file? [y / n  / (c)ontinue without prompting / (q)uit]: ").strip()
    if response.lower() == 'y':
        return True
    elif response.lower() == 'c':
        state['silent'] = True
        return True
    elif response.lower() == 'q':
        state['exit'] = True
        return False
    else:
        return False


def walk(root):
    state = {'folder_count':0, 'file_count':0, 'possible_renames':0, 'rename_count':0, 'silent':False, 'exit':False, 'verbose':True}
    silence = input("Silence verbose messages? [y / n]: ").strip()
    if silence.lower() == 'y':
        state['verbose'] = False

    for subdir, dirs, files in os.walk(root):
        subdirectoryPath = os.path.relpath(subdir, root) #get the path to your subdirectory
        inform("Processing folder: " + subdirectoryPath, state)
        state['folder_count'] += 1
        for filename in files:
            if is_music(filename):
                state['file_count'] += 1
                proceed = True
                newName = newname(filename, state)
                if newName:
                    state['possible_renames'] += 1
                    if not state['silent']:
                        proceed = prompt(filename, state)
                        if state['exit']:
                            print("Goodbye!")
                            return state
                    if proceed:
                        rename(newName, filename, subdirectoryPath)
                        state['rename_count'] += 1
                        inform("Renamed to: " + newName, state)
                else:
                    inform("Already renamed: " + filename, state)

            else:
                inform("Skipping non-music file: " + filename, state)

    return state


def is_music(f):
    return f.endswith(extension)


def filename_match(f):
    return re.match(regex, f)


def make_new_name(m):
    return "%s - %s - %s %s%s" \
        %(m.group(1), m.group(4), m.group(3), m.group(2), m.group(5))


def newname(f, s):
    match = filename_match(f)
    if match:
        return make_new_name(match)


def rename(new, old, path):
    filePath = os.path.join(path, old) #get the path to your file
    newFilePath = os.path.join(path, new)
    os.rename(filePath, newFilePath) #rename your file


# run
if __name__ == '__main__':
    start()
