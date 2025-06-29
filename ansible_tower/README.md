# Ansible Tower

This [blueprint](../ansible_tower.yaml) uses cloudify-rest-plugin to communicate with Ansible Tower.  
It creates following resources on Ansible Tower:
 - Inventory - named _Cloudify_inventory_
 - Host - adds EC2 instance created by [ec2_blueprint](../ec2.yaml)
 - Project - named _Cloudify_project_
 - Job template - named _create_file_ which executes a playbook from Git repository specified in input
 - runs the job template

The example simple playbook is stored here: https://github.com/jakubcierlik/exl-example-playbook/blob/main/playbook.yaml  
It creates a simple _test_file_ in the home directory of the user.  

To successfully upload and deploy the blueprint there should be following secrets created on Cloudify Manager:
 - ANSIBLE_TOWER_USERNAME - name of the user which will be used to log into the Ansible Tower
 - ANSIBLE_TOWER_PASSWORD - password of the user which will be used to log into the Ansible Tower
 - ANSIBLE_TOWER_AUTHENTICATION - with a non-relevant initial value, for example "init"
 - SSH_KEY_DATA - value of the private key used to create the EC2 instance

The _ANSIBLE_TOWER_AUTHENTICATION_ secret value will be updated by a deployment.  

This blueprint exposes a basic set of inputs to this module, but it can be easily extended as needed.
