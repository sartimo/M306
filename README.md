# Deployment with ```az``` cli

> Note: pre-existing ressource-groups are required to deploy bicep templates


```bash
az login
az deployment group create \
  --name ExampleDeployment \
  --resource-group ExampleGroup \
  --template-file <path-to-bicep> \
  --parameters storageAccountType=Standard_GRS
  ```

# Azure In-Deployment

1. Start Azure Shell in Portal
2. run this:

```bash
git clone https://github.com/0xtimosarkar/M306
cd M306
New-AzResourceGroupDeployment -TemplateFile <file>.bicep -ResourceGroupName <name>
```
