# hello-lambda

Minimal project to get up and running on AWS lambda with Python 3.6 and [pipenv](http://docs.pipenv.org/).

## Quickstart

### Install

The first time only:
- `pipenv install`: Create a virtual environment and install dependencies

### Build

- `./build.sh`: Collect dependencies and entry point script into a [deployment package](http://docs.aws.amazon.com/lambda/latest/dg/lambda-python-how-to-create-deployment-package.html)

At this point you should have a delivrable for AWS on your Desktop

### Upload and Deploy

- Go to your AWS account, in the "Lambda" section
- Click "Create a function" > "Author from scratch" > Configure triggers page: Click "Next"
- Give a name & description, choose Python 3.6 runtime
- Select "Upload a ZIP file" and choose the delivrable in the file picker
- Set the Handler to `hello_lambda.lambda_handler` (or more generally <script_name>.<function_name>)
- Select/create an AWS Role, click "Next"
- Review all the details and confirm creation
- Run it!

### Next steps

- Add any third party package you might need using `pipenv install ...`
- To deploy, run the build script and re-upload the ZIP file
- Settings can be added as environment variables in AWS
- Triggers can be configured to run your function: API gateway, Alexa, Cloudwatch, SNS, ...
