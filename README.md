# email_plugin Step
email plugin, send msg by email

### INPUTS

* `FLOW_EMAIL_TO` - 邮件接收者.
* `FLOW_EMAIL_SUBJECT` - 邮件标题.
* `FLOW_EMAIL_CONTENT` - 邮件内容.


## EXAMPLE 

```yml
steps:
  - name: email_plugin
    enable: true
    failure: true
    plugin:
      name: email_plugin
      inputs:
        - FLOW_EMAIL_TO=$FLOW_EMAIL_TO
        - FLOW_EMAIL_SUBJECT=$FLOW_EMAIL_SUBJECT
        - FLOW_EMAIL_CONTENT=$FLOW_EMAIL_CONTENT
```
