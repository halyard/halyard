#!/usr/bin/env bash

URL="https://exporter.akerl.app/metric"
AUTH="Authorization: Bearer $EXPORTER_TOKEN"
if [[ "$JOB_STATUS" == "success" ]] ; then
    VALUE=1
else
    VALUE=0
fi
BODY="{\"name\":\"gh/${GITHUB_REPOSITORY}\",\"metrics\":[{\"name\":\"ghactions\",\"type\":\"gauge\",\"tags\":{\"repo\":\"${GITHUB_REPOSITORY}\"},\"value\":\"${VALUE}\"}"

curl -XPOST -d "$BODY" -H"$AUTH" "$URL"
