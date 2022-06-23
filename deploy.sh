# 登录docker仓库
docker login --username=$ALI_DOCKER_USERNAME --password=$ALI_DOCKER_PASSWORD registry.cn-hangzhou.aliyuncs.com
# 构建docker镜像
docker build -t registry.cn-hangzhou.aliyuncs.com/ranmo/shiqi-deploy:${BUILD_NUMBER} -f Dockerfile .
# push docker镜像
docker push registry.cn-hangzhou.aliyuncs.com/ranmo/shiqi-deploy:${BUILD_NUMBER}

# 发布服务
#helm install shiqi-deploy chart/
kubectl delete -f k8s.yaml
kubectl apply -f k8s.yaml

# 发布 chart
