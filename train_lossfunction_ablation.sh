./darknet detector train data/coco.data cfg/yolov4_iou.cfg yolov4.conv.137 -map | tee -a trainRecord_iou.txt
./darknet detector train data/coco.data cfg/yolov4_giou.cfg yolov4.conv.137 -map | tee -a trainRecord_giou.txt
./darknet detector train data/coco.data cfg/yolov4_diou.cfg yolov4.conv.137 -map | tee -a trainRecord_diou.txt
./darknet detector train data/coco.data cfg/yolov4_ciou.cfg yolov4.conv.137 -map | tee -a trainRecord_ciou.txt