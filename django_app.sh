#!/bin/bash
#Making django clone app

code_clone(){
        echo "Cloning the Django from git"
        git clone https://github.com/LondheShubham153/kubernetes-in-one-shot.git
}

installing_requirements(){
        echo "Installing requirements"
        sudo yum update -y
       
        sudo yum install docker -y
        sudo systemctl start docker
        sudo systemctl enable docker

        sudo yum install nginx -y
        sudo systemctl start nginx
        sudo systemctl enable nginx
}

required_restart(){
        sudo systemctl enable docker
        sudo systemctl enable nginx
}

deploy(){
        docker build -t notes-app .
        docker run -d -p 8000:8000 notes-app:latest
}

echo "**********************DEPLOYMENT STARTED ************************"

if ! code_clone; then
        echo "Directory already exist"
fi
        if [ -d "kubernetes-in-one-shot/django-notes-app" ]; then
                cd kubernetes-in-one-shot/django-notes-app || exit 1
        else
                echo "Directory not found. Exiting."
                exit 1
fi

if ! installing_requirements; then
        echo "Installation error"
        exit 1
fi

if ! required_restart; then
        echo "Restart Failed"
        exit 1
fi

if ! deploy; then
        echo "Deployment failed"
        exit 1
fi
echo "**********************DEPLOYMED SUCCESSFULLY **********************"




