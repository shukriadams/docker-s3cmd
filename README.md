Dead-simple Ubuntu docker container with only `s3cmd`. Use this if you want to run s3cmd but don't have time to figure out which magical incantation is needed to get it to run this time.

https://hub.docker.com/repository/docker/shukriadams/s3cmd

## Use

Run any s3cmd, egs, upload things to Linode

    docker run \
        -v $(pwd)/some/path:/tmp/upload \
        shukriadams/s3cmd:2.1.0 \
        s3cmd sync /tmp/upload s3://mybucket/ --host=eu-central-1.linodeobjects.com --host-bucket=mybucket --access_key=mykey --secret_key=mysecret

## Tags

Container tags follow [s3cmd](https://github.com/s3tools/s3cmd/releases) tags (minus the leading "v")
