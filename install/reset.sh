#!/bin/sh

#
# Reset the environment.
#
pushd ../

printf "\Delete Portal ...\n"
kubectl delete -f portal/petstore-portal-portal.yaml
printf "\n"

printf "\nDelete API-Keys ... \n"
kubectl delete -f api-keys/httpbin-ultimate-api-key-secret-invalid.yaml
printf "\n"

printf "\nDelete Users and Groups ...\n"
kubectl delete -f users-groups/developers-group-users-secret.yaml
printf "\n"

printf "\nDelete Portal Environment ...\n"
kubectl delete -f environment/dev-environment.yaml
printf "\n"

printf "\nDelete API Products ...\n"
kubectl delete -f apis/httpbin-product-apiproduct.yaml
printf "\n"

printf "\nDelete APIDocs ...\n"
kubectl delete -f apis/httpbin-schema-apidoc.yaml
printf "\n"

printf "\nDelete K8S Services & Deployments ...\n"
kubectl delete -f apis/httpbin.yaml
printf "\n"

kubectl delete ns httpbin
kubectl delete ns portal-env

popd