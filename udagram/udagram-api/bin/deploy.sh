echo 'Deploy AWS EB'

eb init --region us-east-1 --platform 'Node.Js 14 running on 64bit Amazon Linux 2' Pro-nd0067-dev
eb list
eb use Pro-nd0067-dev
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

cp -rf src/config www/config
cp -R .elasticbeanstalk www/.elasticbeanstalk
cp .npmrc www/.npmrc
cp package.json www/package.json
cd www
zip -r Archive.zip .
cd ..

eb list
eb use Pro-nd0067-dev
eb deploy