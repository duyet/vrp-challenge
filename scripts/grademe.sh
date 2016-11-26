curl -X POST -H "Content-Type: application/json" -d '{
          "team_name": "honestbee",
          "service_url": "http://${DEPLOY_TARGET}",
          "competition_round": "first_round",
          "type": "score"
      }' "http://scorer.honestbee.com:5000/submit"
