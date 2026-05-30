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
                echo 'Ejecutando simulación: docker build -t ceti-vinculacion-app:latest .'
                echo '✅ Imagen construida con éxito.'
            }
        }
        
        stage('3. Limpieza del Entorno') {
            steps {
                echo 'Deteniendo versiones anteriores para evitar conflictos de puerto...'
                echo 'Ejecutando simulación: docker stop ceti-app && docker rm ceti-app'
            }
        }
        
        stage('4. Despliegue Continuo (Docker Run)') {
            steps {
                echo 'Desplegando la nueva versión de la Plataforma de Vinculación...'
                echo 'Ejecutando simulación: docker run -d -p 80:80 --name ceti-app ceti-vinculacion-app:latest'
                echo '🚀 ¡Despliegue a Producción exitoso!'
            }
        }
    }
}
