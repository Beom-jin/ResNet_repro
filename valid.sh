model=resnet56
pretrained_model=./save_lr_001_resnet56/checkpoint.th
echo "python -u validation.py  --arch=$model  --pretrained=$pretrained_model" 
python -u validation.py  --arch=$model  --pretrained=$pretrained_model