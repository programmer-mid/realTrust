# Use official Tomcat 10 image with JDK 17
FROM tomcat:10.1-jdk17

# Remove default web apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file as ROOT.war

COPY RealTrust.war /usr/local/tomcat/webapps/ROOT.war


# Expose Tomcat port
EXPOSE 8080

# Start Tomcat (shell form)
CMD /usr/local/tomcat/bin/catalina.sh run
