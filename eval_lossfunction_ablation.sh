./darknet detector valid data/coco_eval.data cfg/yolov4_iou.cfg backup_coco/yolov4_iou_best.weights
mv /home/spiderkiller/Desktop/darknet/results/coco_results.json /home/spiderkiller/Desktop/darknet/results/yolov4_iou_result.json
./darknet detector valid data/coco_eval.data cfg/yolov4_giou.cfg backup_coco/yolov4_giou_best.weights
mv /home/spiderkiller/Desktop/darknet/results/coco_results.json /home/spiderkiller/Desktop/darknet/results/yolov4_giou_result.json
./darknet detector valid data/coco_eval.data cfg/yolov4_diou.cfg backup_coco/yolov4_diou_best.weights
mv /home/spiderkiller/Desktop/darknet/results/coco_results.json /home/spiderkiller/Desktop/darknet/results/yolov4_diou_result.json