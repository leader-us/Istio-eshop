#!/bin/sh
kubectl delete -f ./eshop-web.yaml

kubectl delete -f ./eshop-product.yaml

kubectl delete -f ./eshop-cart.yaml

kubectl delete -f ./eshop-auth.yaml

kubectl delete -f ./eshop-mysql.yaml

kubectl delete -f ./eshop-redis.yaml

kubectl delete configMap eshop-auth-config

kubectl delete configMap eshop-cart-config

kubectl delete configMap eshop-product-config

kubectl delete configMap eshop-web-config

kubectl delete secret  eshop-mysql-pwd
