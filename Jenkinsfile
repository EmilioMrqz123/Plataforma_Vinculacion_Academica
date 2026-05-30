pipeline {
    agent any
    stages {
        stage('Descarga de Código') {
            steps {
                echo 'Descargando código desde GitHub...'
            }
        }
        stage('Pruebas') {
            steps {
                echo 'Ejecutando pruebas unitarias dummy...'
                echo '¡Pruebas exitosas!'
            }
        }
        stage('Despliegue') {
            steps {
                echo 'Desplegando en el entorno de pruebas...'
            }
        }
    }
}
