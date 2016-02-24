Adobe Digital Publishing Solution
----

### Content Producer API: Swagger Documentation

This contains the swagger documentation for the following Adobe Digital Publishing Solution Content Producer APIs:

* Authentication Service
* Authorization Service
* Notification Service
* Producer Service
* Product Service

## How-To

To load the swagger documentation, please do the following:

1. Host the swagger documentation folder from a server, or a localhost instance like [MAMP](https://www.mamp.info/en/)
2. If the hosted URL to the swagger documentation folder is http://localhost:8888/aemmobile-swagger-doc, then you can skip the next step.
3. Otherwise, please update line #55 of /service.json file according to the hosted URL.

```javascript
#53     "contact": "wwds@adobe.com"
#54   },
#55   "basePath": "http://localhost:8888/your-custom-path"
#56 }
```
