Running a sample node application inside Docker.io container
==============================================================


Create docker image:

  $ sudo docker build --rm --no-cache -t node-app .

Run docker image:

  $ sudo docker run -p 8080:3000 -d node-app

Access your running app

  http://localhost:8080
