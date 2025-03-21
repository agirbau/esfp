python3 ../train.py --gpu 0 \
                 --dataset realevents \
                 --dataroot /home/user/datasets/ESFP-Real/realworld_dataset_clean/original \
                 --output_dir /home/user/app/results \
                 --netinput events_8_bins_cvgri \
                 --batch_size 4 \
                 --exp_name original \
                 --training_mode all

# --dataroot /home/user/datasets/ESFP-Real/realworld_dataset_clean/sampling/iccv25/events_poisson_0.9-1 \
# --gpu 0 --dataset realevents --dataroot /home/user/datasets/ESFP-Real/realworld_dataset_clean/sampling/iccv25/events_evDownNavi_0.001-1 --pretrained /home/user/app/results/original --netinput events_8_bins_cvgri --batch_size 4 --exp_name events_cvgri_Real_pretrained --training_mode test