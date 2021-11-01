# Input 
# src_path = "../bdd100k_daytime_train/train/"
# src_path = "../bdd100k_daytime_train/val/"
# src_path = "../bdd100k_daytime_train/test_only_daytime/"
src_path = "../bdd100k_daytime_train/test_only_night/"
# src_path = "../bdd100k_all/val/"
# src_path = "../bdd100k_all/test/"
# src_path = "../bdd100k_all/test_only_daytime/"
# src_path = "../bdd100k_all/test_only_night/"
# Output
# out_path = "../darknet/data/bdd100k_daytime_train_train.txt"
# out_path = "../darknet/data/bdd100k_daytime_train_val.txt"
# out_path = "../darknet/data/bdd100k_daytime_train_test_only_daytime.txt"
out_path = "../darknet/data/bdd100k_daytime_train_test_only_night.txt"
# out_path = "../darknet/data/bdd100k_val.txt"
# out_path = "../darknet/data/bdd100k_test.txt"
# out_path = "./data/bdd100k_test_only_daytime.txt"
# out_path = "./data/bdd100k_test_only_night.txt"

import os
# image_files = []
s = ''
for fn in os.listdir(src_path):
    if fn.endswith(".jpg"):
        s += os.path.abspath(src_path + fn) + '\n'

with open(out_path, "w") as f:
    f.write(s)
print("Write file to " + out_path)
