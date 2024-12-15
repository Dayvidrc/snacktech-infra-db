# snacktech-infra-db
Repo para scripts de terraforma para criação de uma instancia RDS na AWS


## Deploy local RDS
1. Iniciar o terraform: Informar os parametros do backend. Crie um bucket no S3 e informe o nome dele no parametro bucket. Os demais podem ser mantidos com os valores abaixo.
    ´terraform init -backend-config="bucket=snacktech-backend-tfstate" -backend-config="key=rds/terraform.tfstate" -backend-config="region=us-east-1"´

2. Criar o plano
    ´terraform plan -out=tfplan´

3. Implantar o plano
    ´terraform apply -auto-approve tfplan´

4. Ao fim da execução o endpoint do banco de dados será exibido na saída.

## Deploy via actions na conta LAB

1. Crie um bucket no S3.
2. Confibure as variaveis de ambiente:
    - BACKEND_BUCKET_NAME com o nome do bucket criado acima
    - AWS_REGION com a região na qual criou o bucket
    - BACKEND_BUCKET_KEY = rds/terraform.tfstate
    - AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY e AWS_SECRET_ACCESS_TOKEN com os dados de conexão da sua conta no LAB
    - DB_UID e DB_PASSWORD com o usuário e senha padrão para o banco de dados 
3. Após isso execute a action (pode ser através de PR direcionado para a branch main).
