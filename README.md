<img src='https://raw.githubusercontent.com/local-first-web/branding/main/svg/relay-v.svg'
width='250' alt="@localfirst/relay logo"/>

This is a deployment wrapper for [@localfirst/relay](https://github.com/local-first-web/relay/packages/relay).

Jump to instructions for:
[Glitch](#deploying-to-glitch) |
[Heroku](#deploying-to-heroku) |
[AWS](#deploying-to-aws-elastic-beanstalk) |
[Google](#deploying-to-google-cloud) |
[Azure](#deploying-to-azure) |
[local server](#installing-and-running-locally)

## Deploying to Glitch

You can deploy this relay to [Glitch](https://glitch.com) by clicking this button:

[![Remix on Glitch](https://cdn.glitch.com/2703baf2-b643-4da7-ab91-7ee2a2d00b5b%2Fremix-button.svg)](https://glitch.com/edit/#!/import/github/local-first-web/relay-deployable)

Alternatively, you can remix the [**local-first-relay**](https://glitch.com/edit/#!/local-first-relay) project.

![image](./screenshot.png)

## Deploying to Heroku

This server can be deployed to [Heroku](https://heroku.com). By design, it should only ever run with a single dyno. You can deploy it by clicking on this button:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Or, you can install using the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) as follows:

```bash
heroku create
git push heroku master
heroku open
```

## Deploying to AWS Elastic Beanstalk

To install using the [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv1.html).

```bash
eb init
eb create
eb open
```

## Deploying to Google Clou

To install using the [Google Cloud SDK](https://cloud.google.com/sdk/docs/):

```bash
gcloud projects create my-local-first-relay --set-as-default
gcloud app create
gcloud app deploy
gcloud app browse
```

## Deploying to Azure

To install using the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) installed:

```bash
az group create --name my-local-first-relay --location eastus
az configure --defaults group=my-local-first-relay location=eastus
az appservice plan create --name my-local-first-relay --sku F1
az webapp create --name my-local-first-relay --plan my-local-first-relay
az webapp deployment user set --user-name USERNAME --password PASSWORD
az webapp deployment source config-local-git --name my-local-first-relay
git remote add azure https://USERNAME@my-local-first-relay.scm.azurewebsites.net/my-local-first-relay.git
git push azure master
az webapp browse --name my-local-first-relay
```

## Installing and running locally

```bash
yarn
yarn start
```

You should see confirmation on the command line that it's running.

```
 🐟  Listening at http://localhost:8080
```

You can visit that address with a web browser to confirm that it's active. If it is, you'll see this:

<img src='./screenshot.png' width='500' align='center' />

## AWS Lambda, Azure Functions, Vercel, Serverless, Cloudwatch Workers, etc.

Since true serverless functions are stateless and only spun up on demand, they're not a good fit for
this server, which needs to remember information about connected peers and maintain a stable
websocket connection with each one.
