# Local development with Azure Static Web Apps

We use the `swa` [command line for local development](https://azure.github.io/static-web-apps-cli/docs/intro) as described in [Microsoft's SWA documentation](https://docs.microsoft.com/en-us/azure/static-web-apps/local-development)

Installing the `swa` command line:

```
npm install -g @azure/static-web-apps-cli
```

The `swa` CLI acts as a wrapper around
- a hosted web application (e.g. using npm)
- a redirect on `/api` requests to a hosted Azure Functions application
- mocked authentication endpoints

## Starting a full local environment

By default this launches both the SPA (`npm start`) and Azure functions (`func start`).

The SPA will have hot reload. The Azure Function app will not.

```
swa start
```

## Starting with an alternative API

To launch the SPA stand-alone whilst still routing with the `/api` endpoint:

```
swa start --api-location http://localhost:7071
```

You will have to launch the Azure Functions app separately.

# Azure Functions

Initialised by:

```
func init stockman-api --worker-runtime dotnet

cd stockman-api
func new --name GetAllStock --template "HTTP trigger"
```
