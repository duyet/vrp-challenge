# Sample application

This is an example application that does not do much.

Read [First Round](first_round/) Instructions.


## Docker & Gitlab CI Overview:

### Local build

You may build the Docker image locally:
```
docker build -t myapp .
```

And start the application locally:
```
docker run -d -p 80:5000 --name myapp myapp
```

You can now test your application responses:
```
curl localhost
```

### Gitlab CI

Alternatively, you may use the images built by gitlab.

Provide your docker engine with your gitlab repository credentials.

   Use your gitlab username and password:
   ```
   docker login glr.honestbee.com
   ```

Once you push code, Gitlab will run a build the CI pipeline to build, release and deploy your application to your server.

## Grading

Once the application is successfully deployed, a grading stage will evaluate the deployed code.

The resulting score will be updated and published to the [leaderboard](http://leaderboard.honestbee.com)
