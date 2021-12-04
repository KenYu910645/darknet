import argparse

# result_file = "../darknet/bdd100k_high_reso_result.txt"



parser = argparse.ArgumentParser(description='please specifiy result.txt from yolo prediction result.')
parser.add_argument('result_file',type=str, help='yolo prediction result.')
args = parser.parse_args()

c = 0
s = 0
with open(args.result_file) as result:
    for line in result:
        if line.find('milli-seconds') != -1:
            c += 1
            s += float(line.split()[-2])
print ("FPS = {}".format(str( 1000/(s/c) )))