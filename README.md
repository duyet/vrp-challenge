# Sample application

This is an example application that does not do much.

When creating your application

# Running locally:

```
# log in with your gitlab username and password
docker login glr.honestbee.com
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
