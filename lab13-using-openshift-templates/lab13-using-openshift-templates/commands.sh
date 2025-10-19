#!/bin/bash
oc create -f web-app-template.yaml
oc get templates
oc describe template web-app-template
oc process web-app-template | oc create -f -
oc get all -l app=web-app
oc get route web-app -o jsonpath='{.spec.host}{"\n"}'
curl http://web-app-le3arn2code-dev.apps.rm1.0a51.p1.openshiftapps.com
