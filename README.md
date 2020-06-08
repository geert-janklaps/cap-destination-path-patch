# SAP Cloud Application Programming Model multiple services in single destination patch

This example application demonstrates how multiple destination endpoints can be configured for a single destination.
This patch introduces a new attribute destinationPath in the credentials part of the configured services:

```json
"cds": {
    "requires": {
      "API_BUSINESS_PARTNER": {
        "kind": "odata",
        "model": "srv\\external\\API_BUSINESS_PARTNER",
        "credentials": {
          "destination": "S4HCLOUD",
          "destinationPath": "/sap/opu/odata/sap/API_BUSINESS_PARTNER"
        }
      }
    }
  }
```

If you want to give it a try, please store the following content in the file *default-env.json* the root folder of this project.

```json
{
    "destinations": [
        {
            "name": "S4HCLOUD",
            "url": "<replace>",
            "username": "<replace>",
            "password": "<replace>"
        }
    ]
}
```

Make sure that you have the patch command available on your machine. Then you can run:

```bash
npm run setup
```

to install the dependencies, build, patch and start the app. 
The next time you want to start simply run:

```bash
npm run start
```
