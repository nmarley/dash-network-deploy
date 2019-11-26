function services_list() {
    # Refresh state
    terraform_run_command "refresh"

    # Ensure ansible inventory
    terraform_output_inventory

    # Ensure vpn config
    ansible_download_vpn_config

    cd terraform/aws

    terraform output services

    cd ../..
}
