pipeline {
    agent any
    
    stages {
        stage('1. Descarga de Código') {
            steps {
                echo 'Obteniendo la última versión desde GitHub...'
            }
        }
        
        stage('2. Construcción de Imagen (Docker Build)') {
            steps {
                echo 'Empaquetando el microservicio en un contenedor...'
                bat 'docker build -t ceti-vinculacion-app:latest .'
            }
        }
        
        stage('3. Limpieza del Entorno') {
            steps {
                echo 'Deteniendo versiones anteriores para evitar conflictos de puerto...'
                catchError(buildResult: 'SUCCESS', stageResult: 'SUCCESS') {
                    // Detiene y borra el contenedor viejo si existe. El catchError evita que el pipeline falle la primera vez que se corre.
                    bat 'docker stop ceti-app'
                    bat 'docker rm ceti-app'
                }
            }
        }
        
        stage('4. Despliegue Continuo (Docker Run)') {
            steps {
                echo 'Desplegando la nueva versión en producción...'
                // Corre el contenedor en segundo plano (-d) y expone el puerto 80
                bat 'docker run -d -p 80:80 --name ceti-app ceti-vinculacion-app:latest'
            }
        }
    }
}
