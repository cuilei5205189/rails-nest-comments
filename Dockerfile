from ruby:2.5.1
run apt update -y
workdir /app
run bundle install && rake db:migrate
cmd ['bin/rails','s',-b','0.0.0.0']