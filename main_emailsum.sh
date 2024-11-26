# bart large beam
PYTHONPATH=.. accelerate launch ./src/main.py \
    -do_process_train True \
    -seed 1 \
    -model facebook/bart-large \
    -log_file logs/emailsum_omission_bart_large.log \
    -output_dir models/emailsum_omission_bart_large \
    -dataset data/emailsum/emailsum \
    -max_source_length 1024 \
    -max_target_length 65 \
    -per_device_train_batch_size 4 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 5 \
    -weight_decay 0.1 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -val_max_target_length 65 \
    -val_min_target_length 1 \
    -num_beams 5 \
    -save_path data/emailsum_omission/bart_large \
    -preprocessing_num_workers 1 \
    -result_dir results/emailsum

# bart base beam
PYTHONPATH=.. accelerate launch ./src/main.py \
    -do_process_train True \
    -seed 1 \
    -model facebook/bart-base \
    -log_file logs/emailsum_omission_bart_base.log \
    -output_dir models/emailsum_omission_bart_base \
    -dataset data/emailsum/emailsum \
    -max_source_length 1024 \
    -max_target_length 65 \
    -per_device_train_batch_size 4 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 5 \
    -weight_decay 0.1 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -val_max_target_length 65 \
    -val_min_target_length 1 \
    -num_beams 5 \
    -save_path data/emailsum_omission/bart_base \
    -preprocessing_num_workers 1 \
    -result_dir results/emailsum


# baseline beam
PYTHONPATH=.. accelerate launch ./src/main.py \
    -do_process_train True \
    -seed 1 \
    -model facebook/bart-base \
    -baseline True \
    -log_file logs/emailsum_omission_baseline.log \
    -output_dir models/emailsum_omission_baseline \
    -dataset data/emailsum/emailsum \
    -max_source_length 1024 \
    -max_target_length 65 \
    -per_device_train_batch_size 4 \
    -per_device_eval_batch_size 4 \
    -learning_rate 1e-4 \
    -num_train_epochs 20 \
    -weight_decay 0.1 \
    -num_warmup_steps 1000 \
    -gradient_accumulation_steps 1 \
    -val_max_target_length 65 \
    -val_min_target_length 1 \
    -num_beams 5 \
    -save_path data/emailsum_omission/baseline \
    -preprocessing_num_workers 1 \
    -result_dir results/emailsum


# bart large sample
PYTHONPATH=.. accelerate launch ./src/main.py \
    -do_process_train True \
    -seed 1 \
    -model facebook/bart-large \
    -log_file logs/emailsum_omission_bart_large.log \
    -output_dir models/emailsum_omission_bart_large \
    -dataset data/emailsum/emailsum \
    -max_source_length 1024 \
    -max_target_length 65 \
    -per_device_train_batch_size 4 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 5 \
    -weight_decay 0.1 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -val_max_target_length 65 \
    -val_min_target_length 1 \
    -num_beams 5 \
    -do_sample True \
    -save_path data/emailsum_omission/bart_large \
    -preprocessing_num_workers 1 \
    -result_dir results/emailsum


# bart base sample
PYTHONPATH=.. accelerate launch ./src/main.py \
    -do_process_train True \
    -seed 1 \
    -model facebook/bart-base \
    -log_file logs/emailsum_omission_bart_base.log \
    -output_dir models/emailsum_omission_bart_base \
    -dataset data/emailsum/emailsum \
    -max_source_length 1024 \
    -max_target_length 65 \
    -per_device_train_batch_size 4 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 5 \
    -weight_decay 0.1 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -val_max_target_length 65 \
    -val_min_target_length 1 \
    -num_beams 5 \
    -do_sample True \
    -save_path data/emailsum_omission/bart_base \
    -preprocessing_num_workers 1 \
    -result_dir results/emailsum


# baseline sample
PYTHONPATH=.. accelerate launch ./src/main.py \
    -do_process_train True \
    -seed 1 \
    -model facebook/bart-base \
    -baseline True \
    -log_file logs/emailsum_omission_baseline.log \
    -output_dir models/emailsum_omission_baseline \
    -dataset data/emailsum/emailsum \
    -max_source_length 1024 \
    -max_target_length 65 \
    -per_device_train_batch_size 4 \
    -per_device_eval_batch_size 4 \
    -learning_rate 1e-4 \
    -num_train_epochs 20 \
    -weight_decay 0.1 \
    -num_warmup_steps 1000 \
    -gradient_accumulation_steps 1 \
    -val_max_target_length 65 \
    -val_min_target_length 1 \
    -num_beams 5 \
    -do_sample True \
    -save_path data/emailsum_omission/baseline \
    -preprocessing_num_workers 1 \
    -result_dir results/emailsum


# t5 base beam
PYTHONPATH=.. accelerate launch ./src/main.py \
    -do_process_train True \
    -seed 1 \
    -model t5-base \
    -log_file logs/emailsum_omission_t5_base.log \
    -output_dir models/emailsum_omission_t5_base \
    -dataset data/emailsum/emailsum \
    -prefix summarize: \
    -max_source_length 1024 \
    -max_target_length 65 \
    -per_device_train_batch_size 4 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 5 \
    -weight_decay 0.1 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -val_max_target_length 65 \
    -val_min_target_length 1 \
    -num_beams 5 \
    -save_path data/emailsum_omission/t5_base \
    -preprocessing_num_workers 1 \
    -result_dir results/emailsum

# t5 small beam
PYTHONPATH=.. accelerate launch ./src/main.py \
    -do_process_train True \
    -seed 1 \
    -model t5-small \
    -log_file logs/emailsum_omission_t5_small.log \
    -output_dir models/emailsum_omission_t5_small \
    -dataset data/emailsum/emailsum \
    -prefix summarize: \
    -max_source_length 1024 \
    -max_target_length 65 \
    -per_device_train_batch_size 4 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 5 \
    -weight_decay 0.1 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -val_max_target_length 65 \
    -val_min_target_length 1 \
    -num_beams 5 \
    -save_path data/emailsum_omission/t5_small \
    -preprocessing_num_workers 1 \
    -result_dir results/emailsum

# t5 base sample
PYTHONPATH=.. accelerate launch ./src/main.py \
    -do_process_train True \
    -seed 1 \
    -model t5-base \
    -log_file logs/emailsum_omission_t5_base.log \
    -output_dir models/emailsum_omission_t5_base \
    -dataset data/emailsum/emailsum \
    -prefix summarize: \
    -max_source_length 1024 \
    -max_target_length 65 \
    -per_device_train_batch_size 4 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 5 \
    -weight_decay 0.1 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -val_max_target_length 65 \
    -val_min_target_length 1 \
    -num_beams 5 \
    -do_sample True \
    -save_path data/emailsum_omission/t5_base \
    -preprocessing_num_workers 1 \
    -result_dir results/emailsum

# t5 small sample
PYTHONPATH=.. accelerate launch ./src/main.py \
    -do_process_train True \
    -seed 1 \
    -model t5-small \
    -log_file logs/emailsum_omission_t5_small.log \
    -output_dir models/emailsum_omission_t5_small \
    -dataset data/emailsum/emailsum \
    -prefix summarize: \
    -max_source_length 1024 \
    -max_target_length 65 \
    -per_device_train_batch_size 4 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 5 \
    -weight_decay 0.1 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -val_max_target_length 65 \
    -val_min_target_length 1 \
    -num_beams 5 \
    -do_sample True \
    -save_path data/emailsum_omission/t5_small \
    -preprocessing_num_workers 1 \
    -result_dir results/emailsum
