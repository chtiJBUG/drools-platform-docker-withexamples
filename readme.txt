This container when built shall contain : 
- Guvnor 5.6 (built on latest commit on branch 5.6.x)
- desiger 2.4.2
- drools platform 
- postgres
- examples pre-loaded
- all examples running.


sudo docker build -t="image-dpf" .
and to run it : 
sudo docker run -d --name nhs1 -p 19080:8080 -p 19022:22 -p 15432:5432 image-dpf

then open a browser and go to http://localhost:19080/drools-guvnor and user admin with password admin
for the drools platform : http://localhost:19080/drools-platform-ui/home same user/password
there is a small application to test a loyalty project http://localhost:19080/loyalty-web
and two soap web services
- one that is used by the loyalty-web application at address : http://localhost:19080/loyalty-soap-server/service/calculateService (add ?wsdl to see the definition)
- one that is used for the swimming pool example at address : http://localhost:19080/swimming-pool-soap-server/service/calculateService (add ?wsdl to see the definition)

There is an ssh server
ssh -p 19022 root@localhost
password is root
the logs for the tomcat server are located under /var/log/supervisor/tomcat.log


This docker container is built on the docker hub.
If you want to download the built image : 
sudo docker pull chtijbug/drools-platform-docker-samples
and then 
sudo docker run -d --name nhs1 -p 19080:8080 -p 19022:22 -p 15432:5432  chtijbug/drools-platform-docker-samples
and all the rest is the same.



