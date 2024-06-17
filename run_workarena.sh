tasks_list=(
    # 'workarena.servicenow.dashboard-value-retrieval'
    # 'workarena.servicenow.dashboard-min-max-retrieval'
    # 'workarena.servicenow.report-value-retrieval'
    # 'workarena.servicenow.report-min-max-retrieval'
    # 'workarena.servicenow.create-change-request'
    # 'workarena.servicenow.create-incident'
    # 'workarena.servicenow.create-hardware-asset'
    # 'workarena.servicenow.create-problem'
    # 'workarena.servicenow.create-user'
    # 'workarena.servicenow.knowledge-base-search'
    # 'workarena.servicenow.filter-asset-list'
    # 'workarena.servicenow.filter-change-request-list'
    # 'workarena.servicenow.filter-hardware-list'
    # 'workarena.servicenow.filter-incident-list'
    # 'workarena.servicenow.filter-service-catalog-item-list'
    # 'workarena.servicenow.filter-user-list'
    'workarena.servicenow.sort-asset-list'
    'workarena.servicenow.sort-change-request-list'
    'workarena.servicenow.sort-hardware-list'
    'workarena.servicenow.sort-incident-list'
    'workarena.servicenow.sort-service-catalog-item-list'
    'workarena.servicenow.sort-user-list'
    'workarena.servicenow.all-menu'
    'workarena.servicenow.impersonation'
    'workarena.servicenow.order-developer-laptop'
    'workarena.servicenow.order-ipad-mini'
    'workarena.servicenow.order-ipad-pro'
    'workarena.servicenow.order-sales-laptop'
    'workarena.servicenow.order-standard-laptop'
    'workarena.servicenow.order-apple-watch'
    'workarena.servicenow.order-apple-mac-book-pro15'
    'workarena.servicenow.order-development-laptop-p-c'
    'workarena.servicenow.order-loaner-laptop'
)

model_name="azure/gpt-4-vision-preview"

for task in "${tasks_list[@]}"; do
  python demo_agent/run_demo.py --headless True --task_name "$task" --model_name "$model_name" --demo_mode False --slow_mo 0 --output_dir "results/workarena" --max_steps 30
done