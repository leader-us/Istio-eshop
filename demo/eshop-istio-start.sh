#!/bin/sh
kubectl create configmap eshop-auth-config --from-file=./application-auth.yml 

kubectl create configmap eshop-cart-config --from-file=./application-cart.yml 

kubectl create configmap eshop-product-config --from-file=./application-product.yml 

kubectl create configmap eshop-web-config --from-file=./application-web.yml 


kubectl create -f ./eshop-redis.yaml

kubectl create -f ./eshop-mysql.yaml


sleep 2m

kubectl create -f ./eshop-auth.yaml

kubectl create -f ./eshop-cart.yaml

kubectl create -f ./eshop-product.yaml

kubectl create -f ./eshop-web.yaml
