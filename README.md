Foghorn Leghorn
===============

To use in a Slack room
----------------------

Set the following environment variables:

`export SLACK_WEBHOOK_URL="https://hooks.slack.com/..."`
`export SLACK_WEBHOOK_TOKEN="..."`

You will find the Webhook URL in the _Setup Instructions_ section of the
_Incoming WebHooks_ section of your Slack Integration.

You will find the Webhook Token in the _Setup Instructions_ section of the
_Outcoming WebHooks_ section of your Slack Integration.

To deploy to Heroku
-------------------

Set up a Heroku app and set up the environment variables above with:

`heroku config:set SLACK_WEBHOOK_URL="https://hooks.slack.com/..."`
`heroku config:set SLACK_WEBHOOK_TOKEN="..."`

If you are lucky, you are already on admin of the `foghorn-slack` app,
so you don't have to create a new one! Just add that as a remote, then
run `git push heroku master`.

To add new types of responses
-----------------------------

1. Create a new file under `app/models/response` following the line of the existing ones
2. Add in the `Request#response` method the condition under which the new response should be used