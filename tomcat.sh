# #Every time check the veresion before using commands 
# go to --- https://dlcdn.apache.org/tomcat/tomcat-9
# here we can the version like v9.0.112/ 
# in like three check the version if both or same then leave if not 
# the -edit-ctrl+f-we will get two check boxes and give on top old version(eg:112) and second box give new version(eg:115)
# click on replace all

yum install java-17-amazon-corretto -y
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.115/bin/apache-tomcat-9.0.115.tar.gz
tar -zxvf apache-tomcat-9.0.115.tar.gz
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-9.0.115/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-9.0.115/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="admin@123" roles="manager-gui, manager-script"/>' apache-tomcat-9.0.115/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-9.0.115/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-9.0.115/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-9.0.115/webapps/manager/META-INF/context.xml
sed -i '22d'  apache-tomcat-9.0.115/webapps/manager/META-INF/context.xml
sh apache-tomcat-9.0.115/bin/startup.sh
