Pushes stuff to S3 buckets

## use

docker run \
    -e AWS_REGION=eu-central-1 \ 
    -e AWS_BUCKET=mybucket \ 
    -e AWS_ACCESS_KEY_ID=mykey \
    -e AWS_SECRET_ACCESS_KEY=mysecret \ 
    -e UPLOAD_PATH=some/path \
    -v some/path:/usr/upload \
    shukriadams/s3upload:0.0.1
