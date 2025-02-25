#!/usr/bin/env bash

python3 train.py --epochs 151 --student resnet8 --cuda 1 --dataset cifar100

python3 train.py --epochs 151 --student resnet20 --cuda 1 --dataset cifar100

python3 train.py --epochs 151 --student resnet110 --cuda 1 --dataset cifar100

# 110 -> 20
python3 train.py --epochs 151 --teacher resnet110 --teacher-checkpoint ./resnet110_0_best.pth.tar --student resnet20 --cuda 1 --dataset cifar100

# 110 -> 8
python3 train.py --epochs 151 --teacher resnet110 --teacher-checkpoint ./resnet110_0_best.pth.tar --student resnet8 --cuda 1 --dataset cifar100

# 20 -> 8
python3 train.py --epochs 151 --teacher resnet20 --teacher-checkpoint ./resnet20_0_best.pth.tar  --student resnet8 --cuda 1 --dataset cifar100

