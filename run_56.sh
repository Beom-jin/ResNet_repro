#!/bin/bash

#for model in resnet20 resnet32 resnet44 resnet56 resnet110 resnet1202
for model in  resnet56 #resnet56 #resnet20 resnet32 resnet44 resnet56  
do
    echo "python -u trainer_1.py  --arch=$model  --save-dir=save_cosine_$model |& tee -a log_cosine_$model"
    python -u trainer_1.py  --arch=$model  --save-dir=save_cosine_$model |& tee -a log_cosine_$model
done