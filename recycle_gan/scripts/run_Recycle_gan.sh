# #!./scripts/train_recycle.sh


python /<PATH>/<TO>/train.py --dataroot ./datasets/ --name <NAME> --model recycle_gan  --which_model_netG resnet_6blocks --which_model_netP unet_256 --dataset_mode unaligned_triplet  --no_dropout --gpu 0 --identity 0  --pool_size 0 

# EX: python3 train.py --dataroot ./datasets/ --name colber_oliver --model recycle_gan  --which_model_netG resnet_6blocks --which_model_netP unet_256 --dataset_mode unaligned_triplet  --no_dropout --gpu 0 --identity 0  --pool_size 0 

# TO RUN ON CPU:
# EX: python3 train.py --dataroot ./datasets/ --name colber_oliver --model recycle_gan  --which_model_netG resnet_6blocks --which_model_netP unet_256 --dataset_mode unaligned_triplet  --no_dropout --gpu -1 --identity 0  --pool_size 0 
