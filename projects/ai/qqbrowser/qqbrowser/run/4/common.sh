folder=$(dirname "$0")
v=${folder##*/}
x=$(basename "$0")
echo $x

bin=./run.py
echo $bin

$bin \
  --wandb=0 \
  --wandb_project='qqbrowser' \
  --write_summary=0 \
  --write_metrics_summary=0 \
  --model="baseline" \
  --model_dir="../working/$v/$x" \
  --static_input=1 \
  --input="../input/tfrecords/train/*.tfrec" \
  --valid_input="../input/tfrecords/valid/*.tfrec" \
  --test_input="../input/tfrecords/test/*.tfrec" \
  --parse_strategy=2 \
  --batch_size=512 \
  --eval_mul=4 \
  --learning_rate=0.0005 \
  --min_learning_rate=1e-06 \
  --lr_decay_power=1. \
  --batch_size_per_gpu=0 \
  --lr_scale=0 \
  --num_gpus=1 \
  --optimizer='bert-adamw' \
  --interval_steps=100 \
  --valid_interval_steps=0 \
  --write_valid_final \
  --save_checkpoint=0 \
  --first_interval_epoch=0.1 \
  --vie=1 \
  --cache_valid=0 \
  --fp16=0 \
  --async_valid=0 \
  --async_eval=0 \
  --eval_leave=0 \
  --print_depth=1 \
  --seed=1024 \
  --epochs=3 \
  --decay_epochs=8 \
  $*

