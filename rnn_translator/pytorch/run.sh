#!/bin/bash
source scl_source enable rh-python36 devtoolset-7
set -e

DATASET_DIR='/output_dir'

SEED=${1:-"1"}
TARGET=${2:-"24.00"}


# run training
python train.py \
  --dataset-dir ${DATASET_DIR} \
  --seed $SEED \
  --target-bleu $TARGET
