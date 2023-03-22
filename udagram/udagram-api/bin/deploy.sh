echo 'Deploy AWS EB'

eb init --region us-east-1 --platform 'Node.Js 14 running on 64bit Amazon Linux 2' Pro-nd0067-dev
echo 'finished eb init'
eb list
eb use Pro-nd0067-dev
echo 'now using Pro-nd0067-dev'
eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID --timeout 1400
eb setenv AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION --timeout 1400
eb setenv AWS_SECRT_ACCESS_KEY=$AWS_SECRT_ACCESS_KEY --timeout 1400
eb setenv POSTGRES_DB=$POSTGRES_DB --timeout 1400
eb setenv POSTGRES_HOST=$POSTGRES_HOST --timeout 1400
eb setenv POSTGRES_Port=$POSTGRES_Port --timeout 1400
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME --timeout 1400
eb setenv POSTGRES_PASSWORD=$POSTGRES_PASSWORD --timeout 1400
eb setenv AWS_REGION=$AWS_REGION --timeout 1400
eb setenv AWS_PROFILE=$AWS_PROFILE --timeout 1400
eb setenv AWS_BUCKET=$AWS_BUCKET --timeout 1400
eb setenv URL=$URL --timeout 1400
eb setenv ServerPort=$ServerPort --timeout 1400
eb setenv JWT_SECRET=$JWT_SECRET --timeout 1400
echo 'finished setup enviroment variables'
cp -rf src/config www/config
cp -R .elasticbeanstalk www/.elasticbeanstalk
cp .npmrc www/.npmrc
cp package.json www/package.json
cd www
zip -r Archive.zip .
cd ..
echo 'finished coping files and Ziping'
eb list
echo 'now will start eb deploy'
eb deploy
echo 'finished eb deploy'