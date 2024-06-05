# Machine Learning Reproducibility Challenge (MLRC)

### Prepare Dataset (CIFAR-10)
```
cd data
wget https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
```

### Run Test : valid.sh
```
model=[model name] (e.g., resnet20, resnet32, resnet44, resnet56)
pretrained_model=[weight url] (e.g., ./save_lr_001_resnet56/checkpoint.th)
echo "python -u validation.py  --arch=$model  --pretrained=$pretrained_model" 
python -u validation.py  --arch=$model  --pretrained=$pretrained_model
```
### weight configuration detail
save_cosine_[model name] : Using Cosine Scheduler  
save_lr_001_[model name] : Learning Rate Tuning  
save_[model_name]_base : Base Line Model  
save_[model_name]_nores : Residual Abalation Study  

### Train Detail (LOG File)

log_cosine_[model name] : Using Cosine Scheduler  
log_lr_001_[model name] : Learning Rate Tuning  
log_[model_name]_base : Base Line Model  
log_[model_name]_nores : Residual Abalation Study 

