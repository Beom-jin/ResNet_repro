#!/bin/bash


#for model in resnet20_nores resnet32_nores resnet44_nores resnet56_nores
#for model in  resnet20 resnet32 resnet44 resnet56
for model in  resnet32
do
    echo "python -u trainer_1.py  --arch=$model  --save-dir=save_$model |& tee -a log_$model"
    CUDA_VISIBLE_DEVICES=0,1,2,3 python -u trainer_1.py  --arch=$model  --save-dir=save_cosine_$model |& tee -a log_cosine_$model
done

#for model in resnet20_nores resnet32_nores resnet44_nores resnet56_nores resnet110_nores resnet1202_nores
#for model in resnet44_nores resnet56_nores resnet110_nores
#for model in resnet44_nores







