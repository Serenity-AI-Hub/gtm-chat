___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Serenity Chat",
  "categories": ["CHAT"],
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAYAAAAehFoBAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAATYSURBVHgBxZlPbFRVFMa/+zqFBI2WYISFkKEscIGmjS7ELhiSVlsX2u5MXDhTTdy4sC5gpTPElbhAY1zCDIl7xo22pYlTEzAhIUxEEzUBJ9REaNAORqqtMJfzzeN17nvz7737pvBL2vc/873zzj3n3HMVYpBK64EtfUgpjUNQSMp2SAEDWv54XfarNaCiFKpao6wVFtfvolQqqCosUbBg/G2dgkaWAj1xURDhRXnu9PxJVUREIgl+6S096WickN0kekNFFORmT6rTYR8IJXg8rZPoQ16smsImINYuqxqmZguq0u1ep9sNE9P6PeXg0maJJWK1IS2/8bL8Voh72zM+rXOyyeLBcmz2lMq1u9hW8EMS69FWdEvBmyF2cDewbw/w5A7g9ipQXOj6SEvRTYLpszIITqAHPLsfeGFYossI8Mi2xvkffgaOftL9edExM3dKfWqe8wlmNOAAs4mtJhT3zuvA2Ejr6xEEVyV6DJvRI2HeIGLPxBVLq374rt+itjBryr+87B42zrmI36Zlk0cMaNH3p5vP02fnzwGXfwGuXHPPLf+J0NQkRs8X3KxoWjjWIDs43CyWQr/8Cjh73t23xXHqY6ouuG7hCUm5UpycgSU7nwC+yPrd4MoS8NHnwI0IluxIDYfFl0tuptN4EzHgAAuKPXq8tdidO9wQFxnleoCalBLxPwcrsCTotzduNovly0yNAaMjruCwUcKEEWOthr2JNalneWTLaCB00WdNsXSXDyRq7LOxqgEjxlaFQwmw+LaEYhjGPGi5hfP+6x8fca3aExRSjhTTQ7DEFEvOnvMfv/Fqs1i+VPC+CCQTMmsYsPUIpl0TxlkPWjeY6Y4c998TFZahjBJJWPKoERn+WfX7btD69O04YgmzsBMnFdOKHlev+a8FQ9f3lxAbDjwlKdk6RjxjWHFLP7D9scbx+h1g5VbjePvjcs/9vLryN3DxR1iR4FTc1srmJ3560P3zWLwA/H69ccwB6LH+P6xgLKZLWPcIPOjLplgStK6JdV2hUaGFy9py4DGD7d7livWlZvHn2/82jk1XIbb1Bb2BXlWBJWMvNte9jBbBaDC4x39sWj8KkjPKjsheRI+gb353wW9dRhIzebDWMK9HQqOU2Cq9rjXHfuCZQhi6gmIOBvLo1SVYs6axmChKY248o8vM04jI0h+uwL9utZ5BPH/A7zJ0F1vBYtAim4iJ+0fHbARf/Kn9NYrdH4gcC/Y1BDUWuGnM6TL6N7ZMEROGONYYrYqey7/CDglns3m1l7sbczopgmZkFMaaJj21y617+/vRO7EuOW/H35fI6G+juMZzB1xL0qpBkR5xxbIRPpdXG3Vhwn8VGemWh26kMGm06z9wgDFqLMeYhMpXr4qmKfOcr91a77DUZADGgLGYVv26FE8sqWlpdgd6xq2bgWmdlVfJoQuTo9gQef2mW+ws925aT7FNxmvfbg0pelNoI5Z0bmg/DNEdxJKuaxwTaWnjO8jGTd3d4ACjz84V1Gcd70MI6m1YidFxZtgdkaKGESrMokykZS8Rnq63jHqQEetIBhOrznidyTBYLSy+ktGvibXT4iaTiAg/fX2ZS7LXN3kVubS1EuzBpdtt0j66q+rLt/VlWzmdlJcZMMRVxZ3KXMLtk0+/KiVinKXbez1xxa7HbVKNAAAAAElFTkSuQmCC"
  },
  "description": "Allows you to quickly integrate Serenity Star Chat component into your Website",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "apiKey",
    "displayName": "API Key",
    "simpleValueType": true,
    "notSetText": "You must include your API Key. To get your key, visit the Agent Designer within Serenity* AI Hub, and click on \"Code Snippets\""
  },
  {
    "type": "TEXT",
    "name": "agentCode",
    "displayName": "Agent Code",
    "simpleValueType": true,
    "notSetText": "You must include your Agent Code. Visit the Agent Designer within Serenity* AI Hub, and click on \"Code Snippets\" to get your agent code."
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require("injectScript");
const logToConsole = require("logToConsole");
const callInWindow = require("callInWindow");

const url = "https://hub.serenitystar.ai/resources/chat-gtm-loader/chat-gtm-loader.js";

function onSuccess() {
  data.gtmOnSuccess();
  callInWindow("loadSerenityChat", data.apiKey, data.agentCode);
  
}

function onError() {
  logToConsole("something went wrong trying to load the Serenity Chat component");
  data.gtmOnFailure();
}

injectScript(url, onSuccess, onError);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "loadSerenityChat"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://hub.serenitystar.ai/resources/chat-gtm-loader/chat-gtm-loader.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___NOTES___

Created on 9/17/2024, 2:48:36 PM


