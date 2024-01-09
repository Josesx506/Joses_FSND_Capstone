# Joses_FSND_Capstone

Allow all rds actions with
```bash
- Resource: "*"
  Effect: Allow
  Action:
    - rds:*
```

chmod 400 private-key.pem

ssh -i private-key-pair-file.pem  ec2-user@${3.139.74.135}

sudo dnf update -y
sudo dnf install postgresql
sudo dnf install git
sudo dnf install python

psql --host=salon-database.cjiasyzzf8nn.us-east-2.rds.amazonaws.com --port=5432 --dbname=postgres --username=postgres


Create a key pair from the [EC2 key-pair](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-key-pairs.html) page.Be careful about the region when creating key-pairs, my default region was `us-east-2`. Change the region to your default region. <br>

Create a [default VPC](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#create-default-vpc) if you dont have one

gunicorn -b :8080 app:app