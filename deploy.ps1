Write-Information "Creating SSH Key"
"y" | ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -P """"

ce ansible-galaxy collection install ansible.posix
ce ansible-galaxy collection install amazon.aws

ce pip3 install -U boto3 botocore boto

ce ansible-playbook ./ansible/site.yml -i ./ansible/aws_ec2.yml -v
