import string
print(string.punctuation)
def read_and_parse(f1):
    words = []
    file = open(f1,'r')
    f = file.readlines()
 	file.close()
    for line in f:
        l = line.split()
        length = len(string.punctuation)
        for word in l:
            w = word.lower()
            for j in range(length):
                w = w.replace(string.punctuation[j],'')    
            words.append(w.lower())
    return words


f = input()
read_and_parse(f)