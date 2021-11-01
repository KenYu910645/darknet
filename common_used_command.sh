# Train
./darknet detector train data/<data_file>.data cfg/<cfg_file>.cfg yolov4.conv.137 -map -dont_show | tee -a trainRecord_<project_name>.txt
./darknet detector train data/bdd100k_daytime_train.data cfg/bdd100k.cfg yolov4.conv.137 -map -dont_show | tee -a trainRecord_bdd100k_daytime_train.txt

# Test
./darknet detector test data/<data_file>.data cfg/<cfg_file>.cfg backup_<project_name>/<project_name>_best.weights -dont_show -ext_output < <test_input>.txt > <project_name>_result.txt

