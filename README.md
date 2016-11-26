# The Perfect score

```
docker run -d -p 5050:5000 --name vrp_sample glr.honestbee.com/binhngoc17/vrp_sample:master
```

```
ifconfig | grep netmask
```

In `vrp_master` directory:
```
docker-compose exec score_worker /bin/sh
```

```
curl -X POST -H "Content-Type: application/json" -d '{
    "team_name": "team1",
    "service_url": "http://192.168.64.1:5050",
    "competition_round": "first_round"
}' "http://localhost:5000/submit"
```
