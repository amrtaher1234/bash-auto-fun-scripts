#!/bin/bash

echo "starting up"
read -p "Pick Project Name: " name
read -p "Want style with? css|sass|scss|stylus : " style
ng new "$name" --style="$style" --routing=true
cd "$name"/src/app
mkdir core
ng g module core/core
ng g service core/authentication
ng g service core/animations
mkdir shared
cd shared
mkdir services
mkdir components
cd ..
echo "Done Creating a start of angular application with core module"
echo "Application is with $name name and style $style and also with routing "
echo "bye bye."
sleep 2
