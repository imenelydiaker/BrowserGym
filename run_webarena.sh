tasks_list = (
    for i in {0..811}
    do
        "webarena.$i"
    done
)

model_name="azure/gpt-4-vision-preview"

for task in "${tasks_list[@]}"; do
  python demo_agent/run_demo.py --headless True --task_name "$task" --model_name "$model_name" --demo_mode False --slow_mo 0 --output_dir "results/webarena"
done