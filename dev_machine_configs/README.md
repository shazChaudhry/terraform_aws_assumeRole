# Local configurations

These instructions are for the engineer who is going to run Terraform from their dev machine / laptop

1. Ensure you are in "`dev_machine_configs`" directory of this repo
1. Create a new directory if it does not already exist "`mkdir -p ~/.aws`"
1. Copy files in that directory:
    - "`cp config ~/.aws/`". You will need to add your selected AWS region and AWS account IDs for both accounts #1 and #2
    - "`cp concredentialsfig ~/.aws/`". You will need to add user credentials. This is the user in AWS account #1 who is going to assume a role in AWS account #2
    - "`cp getCredentials.sh ~/.aws/`". You will need to add AWS accounts #2 and role name.
