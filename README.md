# Cevitxe Signal Server

See https://github.com/DevResults/cevitxe for information on what this is all about.

### Installing and running locally

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

### Deploying with Heroku

This app is intended to be deployable to Heroku out of the box. By its design it should only ever
run with a single dyno.

```bash
heroku create
git push heroku master
```

You should see something like this:

```bash
↯ heroku create
Creating app... done, ⬢ limitless-wave-17321
https://limitless-wave-17326.herokuapp.com/ | https://git.heroku.com/limitless-wave-17326.git


↯ git push heroku master
Counting objects: 3, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 744 bytes | 186.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
remote: Compressing source files... done.
remote: Building source:
remote:
remote: -----> Node.js app detected
remote:

...

remote: -----> Launching...
remote:        Released v4
remote:        https://limitless-wave-17321.herokuapp.com/ deployed to Heroku
remote:remote: Verifying deploy... done.
To https://git.heroku.com/limitless-wave-17321.git
   4b72546..60f08c6  master -> master
```
