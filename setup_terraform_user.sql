-- ============================================
-- Snowflake Terraform Service User Setup
-- Run this in Snowflake with ACCOUNTADMIN role
-- ============================================

-- Use ACCOUNTADMIN role to create the service user
USE ROLE ACCOUNTADMIN;

-- Create the Terraform service user with RSA public key authentication
CREATE USER IF NOT EXISTS TERRAFORM_SVC
    RSA_PUBLIC_KEY = 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAonJCp5/O+hkiUSQwTuJC0kFFJAG4j1ARI3humuHfI6E7LJG9hnRnrSsxTDhd57Q1G3emjtMXP8T2vgoRkDGSyTPuKoYlOz37eDJpRSzRYlQM/HmbHnl2Lw/njoG6xpGlrr/RzytL2F9LlTaSeJROhtcQejX41LIlkVVkp9EDkBObrrBctDvkRZZNmbE2Y0KW6Wsm729ZpH4lDpiggOc0ZHUzJ6chckUatDEpJ10ORH/t/91xHbiRTpzDNlsiurJsbP01ZR5yMZBHln1dyJTJ6oRqzNLhkxS/Y8FSXtkIgALjlhUBXW2Q1vpsmLd3zosI4iWR7w4Ax8AlrYFN9eTVDwIDAQAB'
    TYPE = SERVICE
    COMMENT = 'Terraform service account for infrastructure management';

-- Grant necessary roles to the Terraform service user
GRANT ROLE SYSADMIN TO USER TERRAFORM_SVC;
GRANT ROLE USERADMIN TO USER TERRAFORM_SVC;

-- Verify the user was created successfully
DESCRIBE USER TERRAFORM_SVC;
