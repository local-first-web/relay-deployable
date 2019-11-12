# Cevitxe signal server

This is a deployment wrapper for the [Cevitxe](https://github.com/DevResults/cevitxe) signal server.

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

![image](https://user-images.githubusercontent.com/2136620/68671483-b37b9f00-054f-11ea-8043-c5f028e38ef2.png)

## Deploying to Glitch

This server can run on [Glitch](https://glitch.com). Remix the
[**cevitxe-signal-server**](https://glitch.com/edit/#!/cevitxe-signal-server) project.

![image](https://user-images.githubusercontent.com/2136620/68673397-ef186800-0553-11ea-9840-45963ad4c18d.png)

## Deploying to Heroku

This server can be deployed to [Heroku](https://heroku.com). By design, it should only ever run with a single dyno.

> You'll need to install the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli).

```bash
heroku create
git push heroku master
heroku open
```

## Deploying to AWS Elastic Beanstalk

> You'll need to install the [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv1.html).

```bash
eb init
eb create
eb open
```

## Deploying to Google Cloud

> You'll need to install the [Google Cloud SDK](https://cloud.google.com/sdk/docs/).

```bash
gcloud projects create my-signal-server --set-as-default
gcloud app create
gcloud app deploy
gcloud app browse
```
