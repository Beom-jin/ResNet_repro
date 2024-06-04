#!/bin/bash

#for model in resnet20 resnet32 resnet44 resnet56 resnet110 resnet1202
for model in  resnet32 #resnet56 #resnet20 resnet32 resnet44 resnet56  
do
    echo "python -u trainer.py  --arch=$model  --save-dir=save_$model |& tee -a log_lr_001$model"
    python -u trainer.py  --arch=$model  --save-dir=save_lr_001_$model |& tee -a log_lr_001$model
done