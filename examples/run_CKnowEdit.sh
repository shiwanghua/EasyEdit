# python run_CKnowEdit.py \
#     --editing_method=IKE \
#     --hparams_dir=../hparams/IKE/qwen2.5-7b.yaml \
#     --data_dir=../data/ZsRE \
#     --ds_size=100 \
#     --data_type=ZsRE \
#     --sequential_edit



python run_CKnowEdit.py \
    --editing_method=ROME \
    --hparams_dir=../hparams/ROME/qwen2.5-7b.yaml \
    --data_dir=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json \
    --chinese_ds_type='CKnowEdit-history_sequential-edit-false' \
    --metrics_save_dir='output_result_history3_Qwen2.5-7B-Instruct_generate2_do-sample-false' \
    --ds_size=10 \
    --sequential_edit=False

python run_CKnowEdit.py \
    --editing_method=GRACE \
    --hparams_dir=../hparams/GRACE/qwen2.5-7b.yaml \
    --data_dir=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json \
    --chinese_ds_type='CKnowEdit-history_sequential-edit-false' \
    --metrics_save_dir='output_result_history3_Qwen2.5-7B-Instruct_generate2_do-sample-false' \
    --ds_size=10 \
    --sequential_edit=False

python run_CKnowEdit.py \
    --editing_method=IKE \
    --hparams_dir=../hparams/IKE/qwen2.5-7b.yaml \
    --data_dir=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json \
    --chinese_ds_type='CKnowEdit-history_sequential-edit-false' \
    --metrics_save_dir='output_result_history3_Qwen2.5-7B-Instruct_generate2_do-sample-false' \
    --ds_size=10 \
    --sequential_edit=False \
    --train_data_path=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json

# python run_CKnowEdit.py \
#     --editing_method=ROME \
#     --hparams_dir=../hparams/ROME/qwen2.5-7b.yaml \
#     --data_dir=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json \
#     --chinese_ds_type='CKnowEdit-history_sequential-edit-true' \
#     --metrics_save_dir='output_result_history3_Qwen2.5-7B-Instruct_generate2_do-sample-false' \
#     --ds_size=10 \
#     --sequential_edit=True

# python run_CKnowEdit.py \
#     --editing_method=GRACE \
#     --hparams_dir=../hparams/GRACE/qwen2.5-7b.yaml \
#     --data_dir=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json \
#     --chinese_ds_type='CKnowEdit-history_sequential-edit-true' \
#     --metrics_save_dir='output_result_history3_Qwen2.5-7B-Instruct_generate2_do-sample-false' \
#     --ds_size=10 \
#     --sequential_edit=True

# python run_CKnowEdit.py \
#     --editing_method=IKE \
#     --hparams_dir=../hparams/IKE/qwen2.5-7b.yaml \
#     --data_dir=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json \
#     --chinese_ds_type='CKnowEdit-history_sequential-edit-true' \
#     --metrics_save_dir='output_result_history3_Qwen2.5-7B-Instruct_generate2_do-sample-false' \
#     --ds_size=10 \
#     --sequential_edit=True \
#     --train_data_path=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json


# python run_CKnowEdit.py \
#     --editing_method=FT \
#     --hparams_dir=../hparams/FT/qwen2.5-7b.yaml \
#     --data_dir=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json \
#     --chinese_ds_type='CKnowEdit-history_sequential-edit-false' \
#     --metrics_save_dir='output_result_history3_Qwen2.5-7B-Instruct_generate2_do-sample-false' \
#     --ds_size=10 \
#     --sequential_edit=False

# python run_CKnowEdit.py \
#     --editing_method=LoRA \
#     --hparams_dir=../hparams/LoRA/qwen2.5-7b.yaml \
#     --data_dir=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json \
#     --chinese_ds_type='CKnowEdit-history_sequential-edit-false' \
#     --metrics_save_dir='output_result_history3_Qwen2.5-7B-Instruct_generate2_do-sample-false' \
#     --ds_size=10 \
#     --sequential_edit=False


# python run_CKnowEdit.py \
#     --editing_method=AlphaEdit \
#     --hparams_dir=../hparams/AlphaEdit/qwen2.5-7b.yaml \
#     --data_dir=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json \
#     --chinese_ds_type='CKnowEdit-history_sequential-edit-false' \
#     --metrics_save_dir='output_result_history3_Qwen2.5-7B-Instruct_generate2_do-sample-false' \
#     --ds_size=10 \
#     --sequential_edit=False

# python run_CKnowEdit.py \
#     --editing_method=MEMIT \
#     --hparams_dir=../hparams/MEMIT/qwen2.5-7b.yaml \
#     --data_dir=/home/ubisec/swh/codes/EasyEdit2/data/CKnowEdit/history3.json \
#     --chinese_ds_type='CKnowEdit-history_sequential-edit-false' \
#     --metrics_save_dir='output_result_history3_Qwen2.5-7B-Instruct_generate2_do-sample-false' \
#     --ds_size=10 \
#     --sequential_edit=False

