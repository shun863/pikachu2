python predict.py \
    --node_num=1 \
    --device_num=8 \
    --train_data_dir="/home/gezi/new/temp/feed/rank/zjx_data_2/of_train" \
    --predict_data_dir="/home/gezi/new/temp/feed/rank/zjx_data_2/of_valid" \
    --predict_model_path="/home/gezi/soft/wide_n_deep_spark_data_prepare/wide_and_deep_for_sogou/wide_n_deep/snapshots/snapshot/" \
    --predict_data_part_num=128 \
    --batch_size_per_device=512 \
    --max_predict_steps=81 \
    --loss_print_steps=100 \
    --pretrain_model_path='' \
    --model_save_path='snapshots' \
    --weight_l2=0