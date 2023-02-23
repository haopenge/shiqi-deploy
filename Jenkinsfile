def label = "qa"

podTemplate(label: label,cloud: 'kubernetes' ){
    node (label) {
        stage('Git阶段'){
            echo "1、开始拉取代码"
            sh "git version"
            sh "mvn -version"
            sh "docker version"
            sh "kubectl version"
        }
    }
}
