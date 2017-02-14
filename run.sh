# ************************************************************
#
# This step will use email to send msg
#
#   Variables used:
#     $FLOW_EMAIL_TO
#     $FLOW_EMAIL_SUBJECT
#     $FLOW_USER_ID
#     $FLOW_EMAIL_CONTENT
#
#   Outputs:
#
# ************************************************************

set +e
curl -sSL $FLOW_EMAIL_MSG_CENTER_URL \
  -H 'Pragma: no-cache' \
  -H 'Content-Type: multipart/form-data;' \
  -H 'Accept: */*' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -d "user_id=$FLOW_USER_ID&project_id=$FLOW_PROJECT_ID&to=$FLOW_EMAIL_TO&subject=$FLOW_EMAIL_SUBJECT&content=$FLOW_EMAIL_CONTENT"

flow_result $?
