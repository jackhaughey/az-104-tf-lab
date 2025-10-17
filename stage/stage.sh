#!/bin/bash

RESOURCE_GROUP_NAME=tfstate-rg
STAGE_SA_ACCOUNT=tfstagestate0610g
DEV_SA_ACCOUNT=tfdevbackend0610g
CONTAINER_NAME=tfstate

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location uksouth

# Create storage account for staging environment
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STAGE_SA_ACCOUNT --sku Standard_LRS --encryption-services blob

# Create storage account for dev environment
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $DEV_SA_ACCOUNT --sku Standard_LRS --encryption-services blob

# Create blob container for staging environment
az storage container create --name $CONTAINER_NAME --account-name $STAGE_SA_ACCOUNT

# Create blob container for dev environment
az storage container create --name $CONTAINER_NAME --account-name $DEV_SA_ACCOUNT