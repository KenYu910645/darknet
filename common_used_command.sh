# Train
./darknet detector train data/<data_file>.data cfg/<cfg_file>.cfg yolov4.conv.137 -map -dont_show | tee -a trainRecord_<project_name>.txt
./darknet detector train data/bdd100k_daytime_train.data cfg/bdd100k.cfg yolov4.conv.137 -map -dont_show | tee -a trainRecord_bdd100k_daytime_train.txt
./darknet detector train data/bdd100k_new_anchor.data cfg/bdd100k_new_anchor.cfg yolov4.conv.137 -map | tee -a trainRecord_bdd100k_new_anchor.txt

# Test
./darknet detector test data/<data_file>.data cfg/<cfg_file>.cfg backup_<project_name>/<project_name>_best.weights -dont_show -ext_output < <test_input>.txt > <project_name>_result.txt
./darknet detector test data/bdd100k_high_reso.data cfg/bdd100k_high_reso.cfg backup_bdd100k_high_reso/bdd100k_high_reso_best.weights -dont_show -ext_output < data/bdd100k_test.txt > bdd100k_high_reso_result.txt
./darknet detector test data/bdd100k_new_anchor.data cfg/bdd100k_new_anchor.cfg backup_bdd100k_new_anchor/bdd100k_new_anchor_best.weights -dont_show -ext_output < data/bdd100k_test.txt > bdd100k_new_anchor_result.txt
./darknet detector test data/bdd100k_sam.data cfg/bdd100k_sam.cfg backup_bdd100k_sam/bdd100k_sam_best.weights -dont_show -ext_output < data/bdd100k_test.txt > bdd100k_sam_result.txt
./darknet detector test data/bdd100k_mse.data cfg/bdd100k_mse.cfg backup_bdd100k_mse/bdd100k_mse_best.weights -dont_show -ext_output < data/bdd100k_test.txt > bdd100k_mse_result.txt

