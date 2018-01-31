### Single Purpose Container for Notifying Datadog of Codeship Deployments

Uses the Codeship script found (here)[https://github.com/codeship/scripts/blob/master/notifications/datadog.sh].

The only requirement is that a DATADOG\_API\_KEY must be set as an Environment variable.

#### Sample Codeship Services File

```
datadog-codeship-notify:
  image: cloudsight/datadog-codeship-notify
  environment:
    - DATADOG_TITLE=my_app_deployment
  encrypted_env_file: datadog-credentials.encrypted
```

#### Sample Codeship Step

```
- name: notify-datadog
  tag: master
  service: datadog-codeship-notify
  command: ' ' # no arguments needed
```

#### Run in the Console

```
docker run --rm --env DATADOG_API_KEY=my_key cloudsight/datadog-codeship-notify
```
