# 登录docker仓库
docker login --username=$ALI_DOCKER_USERNAME --password=$ALI_DOCKER_PASSWORD registry.cn-hangzhou.aliyuncs.com
# 构建docker镜像
docker build -t registry.cn-hangzhou.aliyuncs.com/ranmo/shiqi-deploy:1.0.0 -f Dockerfile .
# push docker镜像
docker push registry.cn-hangzhou.aliyuncs.com/ranmo/shiqi-deploy:1.0.0

# 发布服务
kubectl apply -f k8s.yaml

# 发布 chart
