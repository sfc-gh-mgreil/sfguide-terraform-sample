# Terraform with Snowflake

This project demonstrates Infrastructure as Code (IaC) for Snowflake using Terraform.

## Prerequisites

1. Terraform installed
2. RSA key pair at `~/.ssh/snowflake_tf_snow_key.p8`
3. Snowflake account with ACCOUNTADMIN access

## Setup

### 1. Create the Terraform Service User

Run the SQL in `setup_terraform_user.sql` in your Snowflake account with ACCOUNTADMIN role.

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Preview Changes

```bash
terraform plan
```

### 4. Apply Changes

```bash
terraform apply
```

## Resources Created

- **Database**: TF_DEMO_DB
- **Warehouse**: TF_DEMO_WH (SMALL, auto-suspend 60s)
- **Schema**: TF_DEMO_SC
- **Role**: TF_DEMO_ROLE
- **User**: TF_DEMO_USER (with RSA key authentication)

## Cleanup

To remove all created resources:

```bash
terraform destroy
```
