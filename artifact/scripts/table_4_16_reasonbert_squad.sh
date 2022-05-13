MODEL=osunlp/ReasonBERT-RoBERTa-base
DATASET=SQuAD #; NewsQA; ...

MODEL_NAME=(${MODEL//// })
MODEL_NAME=${MODEL_NAME[-1]}

SEED=7 
SAMPLE=16 # number of training examples to sample, -1 will use all
echo $MODEL_NAME $DATASET
python train.py\
    --config ./configs/MRQA/configQA.json\
    --pretrain ${MODEL}\
    --sample ${SAMPLE}\
    --seed ${SEED}\
    --run_id ${MODEL_NAME}_${DATASET}_${SAMPLE}_${SEED}\
    --dataset ${DATASET}\
    --overwrite
