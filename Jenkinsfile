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
    }
}
