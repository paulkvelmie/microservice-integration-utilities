# Microservice utilities with NodeJS.

### Configure your AWS Deployment Account

Provide an AWS account that have sufficient access so that serverless can deploy the stack.

```sh
serverless config credentials --provider aws --key YOUR_AWS_ACCESS_KEY --secret YOUR_AWS_SECRET_KEY
```

### Enter the project's folder and install NPM packages via npm install

Enter the project's folder and install NPM packages via npm install

```sh
npm install
```

### Deploy

This will deploy your function to AWS Lambda based on the settings in serverless.yml.

```sh
serverless deploy
```

Finally, invoke your function

```sh
serverless invoke -f xml2json
```

---

### Endpoints

## xml2json

- CURL request:
```sh
curl -X POST \
  https://EXAMPLE.execute-api.us-east-1.amazonaws.com/dev/xmltojson \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'xml=%3C%3Fxml%20version%3D%221.0%22%20encoding%3D%22UTF-8%22%3F%3E%3Chello%3Eworld%3C%2Fhello%3E&undefined='
```

- Response:
```json
{
    "hello": "world"
}
```