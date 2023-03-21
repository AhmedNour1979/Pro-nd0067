echo 'Deploy AWS EB'
eb init --region us-east-1 --platform 'Node.Js 14 running on 64bit Amazon Linux 2' udagram-api
eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
eb setenv AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
eb setenv AWS_SECRT_ACCESS_KEY=$AWS_SECRT_ACCESS_KEY
eb setenv POSTGRES_DB=$POSTGRES_DB
eb setenv POSTGRES_HOST=$POSTGRES_HOST
eb setenv POSTGRES_Port=$POSTGRES_Port
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME
eb setenv POSTGRES_PASSWORD=$POSTGRES_PASSWORD
eb setenv AWS_REGION=$AWS_REGION
eb setenv AWS_PROFILE=$AWS_PROFILE
eb setenv AWS_BUCKET=$AWS_BUCKET
eb setenv URL=$URL
eb setenv ServerPort=$ServerPort
eb setenv JWT_SECRET=$JWT_SECRET
eb list
eb use udgaram-api-dev
eb deploy