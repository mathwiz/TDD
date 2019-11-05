import os
import sys
import re


extension = '.wav'
regex = r'(.+) - (.+) \((\d{2}) (.+)\)(\.wav)'


def start():
    path = os.path.dirname(os.path.realpath(sys.argv[0]))
    result = walk(path)
    print("Folders scanned: %s" %(result['folder_count']))
    print("Files scanned: %s" %(result['file_count']))
    print("Files renamed: %s" %(result['rename_count']))
    return True


def walk(root):
    state = {'folder_count':0, 'file_count':0, 'rename_count':0}

    for subdir, dirs, files in os.walk(root):
        subdirectoryPath = os.path.relpath(subdir, root) #get the path to your subdirectory
        print("Processing folder: " + subdirectoryPath)
        state['folder_count'] += 1
        for filename in files:
            if is_music(filename):
                newName = newname(filename, state)
                if newName:
                    rename(newName, filename, subdirectoryPath)
                    print("Renamed to: " + newName)
                else:
                    print("Skipping music file: " + filename)

            else:
                print("Skipping non-music file: " + filename)

    return state


def is_music(f):
    return f.endswith(extension)


def filename_match(f):
    return re.match(regex, f)


def make_new_name(m):
    return "%s - %s - %s %s%s" \
        %(m.group(1), m.group(4), m.group(3), m.group(2), m.group(5))


def newname(f, s):
    s['file_count'] += 1
    match = filename_match(f)
    if match:
        s['rename_count'] += 1
        return make_new_name(match)


def rename(new, old, path):
    filePath = os.path.join(path, old) #get the path to your file
    newFilePath = os.path.join(path, new)
    os.rename(filePath, newFilePath) #rename your file




# run
if __name__ == '__main__':
    start()
