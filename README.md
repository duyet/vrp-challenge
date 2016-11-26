# Sample application

This is an example application that does not do much.

Read [First Round](first_round/) Instructions.


## Docker flow:

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

Once you push code, Gitlab will run a build the CI pipeline.
```
docker run -d -p 80:5000 --name vrp_sample glr.honestbee.com/binhngoc17/vrp_sample:master
```

To trigger an update (only works from within the gitlab network:
```
curl -X POST -H "Content-Type: application/json" -d '{
    "team_name": "team1",
    "service_url": "http://192.168.64.1:5050",
    "competition_round": "first_round"
}' "http://scorer.honestbee.com:5000/submit"
```
