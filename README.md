Pushes stuff to S3 buckets with s3cmd

https://hub.docker.com/repository/docker/shukriadams/s3cmd

## use

    docker run \
        -e AWS_REGION=myregion \ 
        -e AWS_BUCKET=mybucket \ 
        -e AWS_ACCESS_KEY_ID=mykey \
        -e AWS_SECRET_ACCESS_KEY=mysecret \ 
        -e UPLOAD_PATH=some/path \
        -v some/path:/usr/upload \
        shukriadams/s3cmd:0.0.1
        
The file or folder /some/path will be uploaded to s3 nested @ UPLOAD_PATH within the given bucket.
