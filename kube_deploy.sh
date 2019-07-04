kubectl apply -f deploy.yaml
kubectl patch deployment k8s-test-deployment -n yukimir -p "{\"spec\":{\"template\":{\"metadata\":{\"annotations\":{\"hash\":\"${TRAVIS_COMMIT:0:8}\"}}}}}"