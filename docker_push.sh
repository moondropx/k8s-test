#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push yukimir/test
# kubectl apply -f deploy.yaml
# kubectl patch deployment runner-test-deployment -n test -p "{\"spec\":{\"template\":{\"metadata\":{\"annotations\":{\"hash\":\"${TRAVIS_COMMIT:0:8}\"}}}}}"