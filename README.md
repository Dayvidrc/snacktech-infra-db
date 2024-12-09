# snacktech-infra-db
Repo para scripts de terraforma para criação de uma instancia RDS na AWS


Deploy RDS
1. Iniciar o terraform: Informar os parametros do backend:
    ´terraform init -backend-config="bucket=snacktech-backend-tfstate" -backend-config="key=rds/terraform.tfstate" -backend-config="region=us-east-1"´

2. Criar o plano
    ´terraform plan -out=tfplan´

3. Implantar
    ´terraform apply -auto-approve tfplan´
