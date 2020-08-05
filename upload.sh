if [ -z $AWS_REGION ]; then
    echo "FAIL - AWS_REGION not set"
    exit 1;
fi


if [ -z $AWS_BUCKET ]; then
    echo "FAIL - AWS_BUCKET not set"
    exit 1;
fi


if [ -z $AWS_ACCESS_KEY_ID ]; then
    echo "FAIL - AWS_ACCESS_KEY_ID not set"
    exit 1;
fi


if [ -z $AWS_SECRET_ACCESS_KEY ]; then
    echo "FAIL - AWS_SECRET_ACCESS_KEY not set"
    exit 1;
fi


if [ -z $UPLOAD_PATH ]; then
    echo "FAIL - UPLOAD_PATH not set"
    exit 1;
fi


if [ -d /usr/upload ]; then
    s3cmd sync /usr/upload s3://$AWS_BUCKET/$UPLOAD_PATH/
elif [ -f /usr/upload ]; then
    s3cmd sync /usr/upload s3://$AWS_BUCKET/$UPLOAD_PATH
fi

