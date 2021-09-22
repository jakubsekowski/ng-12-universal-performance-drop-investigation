# ng12-universal-performance-drop-investigation

The aim of this project is to investigate the cause of Eva's performance drop after upgrading to angular 12. Eva uses SSR.

Jira issue: https://payability.atlassian.net/browse/APPS-798

## Description

### Slow app

It is an official SSR example app downloaded from the Angular docs.

Link: https://angular.io/guide/universal#universal-tutorial ('Download the finished sample code')

### Fast app

It is a freshly created ng12 app with SSR configured according to the official Angular Universal docs (Express server).

Link: https://angular.io/guide/universal

### Testing response time

I'm testing the response time of call to the app's home page.

Command: `curl 127.0.0.1:4600`

Slow app usually responds in **500-600ms**. Fast app in **15-30ms**.

## Results

It turned out the delay in the slow app is introduced artificially by the lib angular-in-memory-web-api which simulates API responses.
See the difference between commits `e375e4f1b4fcf913f1b90c37713673f77ef258e4` and `63faf58023d537bece9afc725e7ef9aa6a2e8872`.

## Scripts

You can test the apps using scripts:
```
bash compare-code.sh
bash run-both.sh
bash time-both.sh
bash time-curl.sh localhost:4000
bash kill-both.sh
```