
# Deployments

Deployments
- must be deployed to an existing resource group

## Create a resource group

```sh
az group create --location uksouth --resource-group rg-jgptest-dev-001
```

## Deploy

Deploys the resources defined in `main.bicep` to the resource group `rg-jgptest-dev-001`

```sh
az deployment group create \
  --resource-group rg-jgptest-dev-001 \
  --template-file main.bicep
```

## Clean up

```sh
az group delete --resource-group rg-jgptest-dev-001
```
