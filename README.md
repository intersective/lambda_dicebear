<h1><img src="https://dicebear.com/logo-readme.svg" width="28" /> DiceBear API</h1>

This is the source code for the [DiceBear API](https://dicebear.com/how-to-use/http-api). It's built on [Fastify](https://fastify.io/).
Learn how to set up your own instance of the API in the [documentation](https://dicebear.com/guides/host-the-http-api-yourself).

[Playground](https://dicebear.com/playground) |
[Documentation](https://dicebear.com/guides/host-the-http-api-yourself)


## Deployed Manually

### Prerequisite
* Must have `AWS CLI` configured to the `AWS` account you want to deploy.

* Sample .env file below
```
STACK_NAME=p2-prerelease
ENV=golive
REGION=ap-southeast-2
```

### Deployment commands
* export $(cat .env | xargs)
* serverless create_domain
* serverless deploy

### Destroy commands
* export $(cat .env | xargs)
* serverless remove
