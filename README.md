Foghorn Leghorn
===============

To use in a Slack room
----------------------

Set the following environment variable:

`export SLACK_WEBHOOK_URL="https://hooks.slack.com/..."`

You will find the Webhook URL in the _Setup Instructions_ section of the
_Incoming WebHooks_ section of your Slack Integration.

To deploy to Heroku
-------------------

Set up a Heroku app and set up the environment variable above with:

`heroku config:set SLACK_WEBHOOK_URL="https://hooks.slack.com/..."`

If you are lucky, you are already on admin of the `foghorn-slack` app,
so you don't have to create a new one! Just add that as a remote, then
run `git push heroku master`.