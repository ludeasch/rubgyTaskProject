# Lista de Tareas
sistema para la cursada de ruby 2016
## Requerimientos
```
rails 5.0.0.1
ruby 2.2.4
bundler
```
## Instalacion
```bash
git clone https://github.com/ludeasch/rubyTaskProject
$ cd rubyTaskProject/
$ bundle install
# set intial db setup
$ rails db:migrate
$ rails db:seed
# start server
$ rails server
```
## Test
Para correr los test, desde la carpeta en la que clonamos el proyecto ejecutar
```
$ rails test
```