curl -X POST -H "Content-Type: application/json" -d '{
          "team_name": "${CI_PROJECT_DIR}",
          "competition_round": "${ROUND}",
      }' "http://scorer.honestbee.com:5000/submit"
