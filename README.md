Dead-simple Ubuntu docker container that contains only s3cmd v2.0.2

https://hub.docker.com/repository/docker/shukriadams/s3cmd

## Use

Run any s3cmd, egs, upload things to Linode

    docker run \
        -v $(pwd)/some/path:/tmp/upload \
        shukriadams/s3cmd:0.0.1 \
        bash -c "s3cmd sync /tmp/upload s3://mybucket/ --host=eu-central-1.linodeobjects.com --host-bucket=mybucket --access_key=mykey --secret_key=mysecret"
