from __future__ import division
import sys
import json

term_sents = {}
term_counts = {}

def hw(sent, tweet):
    scores = create_sent(sent)
    for line in tweet:
        jdata = json.loads(line)
        text =  jdata.get("text")
        if text != None:
            score = 0
            new_terms = []
            words = jdata["text"].encode('utf-8').split()
            for word in words:
                sent_score = get_score(scores, word)
                if sent_score == 0:
                    new_terms.append(word)
                score = score + sent_score

            #print text.encode('utf-8')
            #print score
            #print new_terms
            for new in new_terms:
                if term_counts.get(new) == None:
                    term_counts[new] = 1
                    term_sents[new] = score
                else:
                    term_counts[new] = term_counts[new] + 1
                    term_sents[new] = term_sents[new] + score
                    
def print_result():
    for key in term_counts.keys():
        val = term_sents[key] / term_counts[key]
        print key + " " + str(val)
         
def create_sent(fp):
    scores = {} # initialize an empty dictionary
    for line in fp:
        term, score  = line.split("\t")
        scores[term] = int(score)  # Convert the score to an integer.
        
    return scores
   
def get_score(scores, word):
    score = scores.get(word)
    if score == None:
        return 0
    else:
        return score

def lines(fp):
    print str(len(fp.readlines()))

def main():
    sent_file = open(sys.argv[1])
    tweet_file = open(sys.argv[2])
    hw(sent_file, tweet_file)
    print_result()

if __name__ == '__main__':
    main()
