#!/bin/bash

A="none"      # w_gold, none, random
# # dj
B1="/convei_nas2/lune/dongjin/esc/results/test_results/gpt4/2shot/1.json" 
B2="/convei_nas2/lune/dongjin/esc/results/test_results/gpt4/2shot/2.json"
B3="/convei_nas2/lune/dongjin/esc/results/test_results/gpt4/2shot/3.json" 
# B1="/convei_nas2/chaehyeong/dongjin/esc/chatgpt/7shot_3/1.json" 
# B2="/convei_nas2/chaehyeong/dongjin/esc/chatgpt/7shot_2/2.json"
# B3="/convei_nas2/chaehyeong/dongjin/esc/chatgpt/7shot_2/3.json" 

# # ty
# B1="/home/taeyoon/nas2/ty_esc/new_version/results/llama2_70b/3shot/1_post_proceesed.json" 
# B2="/home/taeyoon/nas2/ty_esc/new_version/results/llama2_70b/3shot/2_post_proceesed.json"
# B3="/home/taeyoon/nas2/ty_esc/new_version/results/llama2_70b/3shot/3_post_proceesed.json" 
# B1="/convei_nas2/taeyoon/ty_esc/new_version/results/llama2_70b/2shot_prev/1_post_proceesed.json" 
# B2="/convei_nas2/taeyoon/ty_esc/new_version/results/llama2_70b/2shot/2_post_proceesed.json"
# B3="/convei_nas2/taeyoon/ty_esc/new_version/results/llama2_70b/2shot_prev/3_post_proceesed.json" 

## sj
# B1="/convei_nas2/lune/Projects/ESC/ty/esc/results/gpt_top_2_prof/post_process/1_post_proceesed.json"
# B2="/convei_nas2/lune/Projects/ESC/ty/esc/results/gpt_top_2_prof/post_process/2_post_proceesed.json"
# B3="/convei_nas2/lune/Projects/ESC/ty/esc/results/gpt_top_2_prof/post_process/3_post_proceesed.json" 

## sh
# B1="/convei_nas2/chaehyeong/seonghwan/esc_llama/result_vllm/strg_planner_uni/checkpoint-650/test/iter1/generate_results.json"
# B2="/convei_nas2/chaehyeong/seonghwan/esc_llama/result_vllm/strg_planner_state_D2/checkpoint-600/test2/iter3/generate_results.json"
# B3="/convei_nas2/chaehyeong/seonghwan/esc_llama/result_vllm/strg_planner_state_D3/checkpoint-600/test3/iter2/generate_results.json" 
# B1="/convei_nas2/chaehyeong/seonghwan/esc_llama/result_vllm/bert_large_strg_planner/1_post_processed.json"
# B2="/convei_nas2/chaehyeong/seonghwan/esc_llama/result_vllm/bert_large_strg_planner/2_post_processed.json"
# B3="/convei_nas2/chaehyeong/seonghwan/esc_llama/result_vllm/bert_large_strg_planner/3_post_processed.json" 
# B1="/convei_nas2/chaehyeong/seonghwan/esc_llama/result_vllm/esc_llama_wo_strg_D1/checkpoint-800/D1_train/iter1/generate_results.json"
# B2="/convei_nas2/chaehyeong/seonghwan/esc_llama/result_vllm/esc_llama_wo_strg_D2/checkpoint-800/D2_train/iter1/generate_results.json"
# B3="/convei_nas2/chaehyeong/seonghwan/esc_llama/result_vllm/esc_llama_wo_strg_D3/checkpoint-800/D3_train/iter1/generate_results.json" 

EVAL_MODE=$A
MODEL_NAME1=$B1
MODEL_NAME2=$B2
MODEL_NAME3=$B3



if [ $EVAL_MODE = "none" ]; then
    python /convei_nas2/chaehyeong/seonghwan/esc_llama/evaluation/evaluate_new.py \
        --file_name=$MODEL_NAME1 \
        --file_name2=$MODEL_NAME2 \
        --file_name3=$MODEL_NAME3 \
        --multi
fi

if [ $EVAL_MODE = "random" ]; then
    python /convei_nas2/chaehyeong/seonghwan/esc_llama/evaluation/evaluate_new.py \
        --file_name=$MODEL_NAME1 \
        --file_name2=$MODEL_NAME2 \
        --file_name3=$MODEL_NAME3 \
        --multi \
        --random
fi

if [ $EVAL_MODE = "w_gold" ]; then
    python /convei_nas2/chaehyeong/seonghwan/esc_llama/evaluation/evaluate_new.py \
        --file_name=$MODEL_NAME1 \
        --file_name2=$MODEL_NAME2 \
        --file_name3=$MODEL_NAME3 \
        --multi \
        --w_gold
fi

