# Deployment with ```az``` cli

> Note: pre-existing ressource-groups are required to deploy bicep templates


```bash
az deployment group create \
  --name ExampleDeployment \
  --resource-group ExampleGroup \
  --template-file <path-to-bicep> \
  --parameters storageAccountType=Standard_GRS
  ```
