python3 ../train.py --gpu 0 \
                 --dataset "realevents"\
                 --dataroot /home/user/datasets/ESFP-Real/realworld_dataset_clean \
                 --pretrained training_code/results/events_8bin_cvgri/ \
                 --netinput events_8_bins_cvgri \
                 --batch_size 4 \
                 --exp_name "events_cvgri_Real_pretrained"