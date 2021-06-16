# Istio-eshop
Eshop应用的Service Mesh版本，基于Istio 1.10 
演示了以下几种基本用法
1 Gateway，VirtualService的基本用法
2 灰度发布的基本用法

工程文件说明
eshop-*.yaml是对应的微服务的K8s定义文件
application-*.yaml 是对应微服务模块的Spring配置文件
eshop-gateway.yaml 是对应的Istio基本用法的配置文件
其中eshop-cart-2.yaml与eshop-gateway-2.yaml 是灰度发布的基本用法

安装和测试

K8s集群上安装istio 1.10 +的版本 ，默认命名空间开启Sidecar注解功能
运行 eshop-istio-start.sh 启动应用，确保Pod都正常运行
运行eshop-gateway.yaml，创建eshop网关，
找到Istio的默认网关对于的NodePort端口，测试正常访问 
然后运行其他Istio的例子
