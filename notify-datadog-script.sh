#!/bin/sh
# Adding deployment events to DataDog stream
# http://docs.datadoghq.com/api/#events
#
# You have to set the following environment variables in your project configuration
#
# * DATADOG_API_KEY
#
# You have the option to define the environment variables below, else defaults will be applied.
# Default configuration of this script is for Codeship's Classic infrastructure.
# For more details on Default Environment Variables (those starting with "CI_"), please visit:
# Classic Infrastructure
# https://documentation.codeship.com/classic/getting-started/set-environment-variables/#default-environment-variables
# Docker Infrastructure
# https://documentation.codeship.com/docker/getting-started/steps/#build-environment
#
# * DATADOG_TITLE  ( Default: "Deployment" )
# * DATADOG_DESCRIPTION  ( Default: CI_MESSAGE )
# * DATADOG_PRIORITY  ( Default: "low" )
# * DATADOG_TAGS  ( Default: ["CI_NAME","commit:CI_COMMIT_ID","committer:CI_COMMITTER_USERNAME"] )
#

curl -sSL https://raw.githubusercontent.com/codeship/scripts/master/notifications/datadog.sh | /bin/sh
