def label = "qa"

podTemplate(label: label,cloud: 'kubernetes' ){
    node (label) {
        stage('Git阶段'){
            echo "1、开始拉取代码"
            sh "git version"
        }
        stage('Maven阶段'){
            container('maven') {
                echo "2、开始Maven编译、推送到本地库"
                sh "mvn -version"
            }
        }
        stage('Docker阶段'){
            container('docker') {
                echo "3、开始读取Maven pom变量，并执行Docker编译、推送、删除"
                sh "docker version"
            }
        }
         stage('Helm阶段'){
            container('helm-kubectl') {
                echo "4、开始检测Kubectl环境，测试执行Helm部署，与执行部署"
                sh "helm version"
            }
        }
    }
}
