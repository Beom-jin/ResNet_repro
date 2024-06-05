model=resnet32
pretrained_model=./save_cosine_resnet32/checkpoint.th
echo "python -u validation.py  --arch=$model  --pretrained=$pretrained_model" 
python -u validation.py  --arch=$model  --pretrained=$pretrained_model