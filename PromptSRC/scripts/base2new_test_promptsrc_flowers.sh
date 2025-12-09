#!/bin/bash
DATASET=oxford_flowers
SEED=1
CFG=vit_b16_c2_ep5_batch4_2ctx
SHOTS=16
LOADEP=50
SUB=new
COMMON_DIR=${DATASET}/shots_${SHOTS}/PromptSRC/${CFG}/seed${SEED}
MODEL_DIR=output/base2new/train_base/${COMMON_DIR}
DIR=output/base2new/test_${SUB}/${COMMON_DIR}

python train.py \
--root /content/PromptSRC/data \
--seed ${SEED} \
--trainer PromptSRC \
--dataset-config-file configs/datasets/${DATASET}.yaml \
--config-file configs/trainers/PromptSRC/${CFG}.yaml \
--output-dir ${DIR} \
--model-dir ${MODEL_DIR} \
--load-epoch ${LOADEP} \
--eval-only \
DATASET.NUM_SHOTS ${SHOTS} \
DATASET.SUBSAMPLE_CLASSES ${SUB} \
DATALOADER.NUM_WORKERS 0
