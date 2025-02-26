python3 ../train.py --gpu 0 \
                 --dataset "realevents"\
                 --dataroot /home/user/datasets/ESFP-Real/realworld_dataset_clean \
                 --netinput events_8_bins_cvgri \
                 --batch_size 4 \
                 --exp_name "original_cos_drop" \
                 --cos \
                 --dropout 0.5
