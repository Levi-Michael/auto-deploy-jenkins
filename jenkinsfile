pipeline{
    agent any
    stages{
        stage("PythonPrint"){
            steps{
                sh 'python3 main.py'
            }
            post{
                always{
                    echo "========always========"
                }
                success{
                    echo "========A executed successfully========"
                }
                failure{
                    echo "========A execution failed========"
                }
            }
        }
    }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
        unstable{
            echo "========pipeline execution unstable========"
        }
        changed{
            echo "========pipeline execution changed======== | Will run only if the stat of the Pipeline changed example: from failling to successful"
        }
    }
}
