# DIP Term Project Group 7

## Data
You can download the COCO format Visdrone2019 here (https://drive.google.com/drive/folders/1_8WTsfkOIxVIkVARQAmjfRXDhOOXFwcK?usp=share_link), the format should like:
```shell
./data/
	./anotations
	./train2017
	./val2017
```


## DETR
### Fine-tuning
#### Training
```shell
python3 ./my_finetune_final.py
 -- coco_path ../../data/
 -- output_dir [directory to output]
 -- resume detr-r50_no-class-head.pth
 -- num_classes 11
 -- epochs [number of epochs]
```

#### Demo
```shell
python3 ./my_demo.py [path to model checkpoint] [input image] [output_dir]
```

#### Use our model (fintune 400 epochs) 
```shell
python3 ./my_demo.py ./outputs-epochs400/checkpoint.pth [input image] [output_dir]
```

## CenterNet
### Dependencies

- Python >= 3.6
- PyTorch >= 1.6
- opencv-python
- pycocotools
- numba
- cocoapi


### Data
You can download the dataset from here https://drive.google.com/drive/folders/1qZ05B2Sy2SiKGWHeA5qH-ahORXwSytob?usp=share_link and the directory form should look like:
```shell
./data/
	./visdrone/
		./annotations
		./test
		./train
		./val
```

### Model Weight
You can download our model and save it as ./best_model.pth under centernet directory (https://drive.google.com/file/d/1_wrpxETe5S0D5qGvwdzdAdFlId--YcV7/view?usp=share_link)
### Training
```shell
python3 ./main.py
 --arch [Model Architecture] (resnet18,resnet34,resnet50,resnet101,resnet152,res2net50,res2net101) \
 --min_overlap 0.3 \
 --gpus 0,1 \
 --num_epochs [num_epochs] \
 --lr_step 60,80 \
 --batch_size [batch_size] \
 --lr 0.15625e-4 \
 --exp_id <save_dir>
```

### Demo
```shell
python3 ./demo.py
 --arch [Model Architecture] (resnet18,resnet34,resnet50,resnet101,resnet152,res2net50,res2net101) \
 --gpus 0 \
 --load_model <path/to/weight_name.pt> \
 --image <path/to/your_picture.jpg>
```
The result will save at demo_result.png

### Use our best model
```shell
python3 ./demo.py
 --arch resnet152 \
 --gpus 0 \
 --load_model ./best_model.pth \
 --image <path/to/your_picture.jpg>
```
The result will save at demo_result.png



