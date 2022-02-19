jstatd -J-Djava.security.policy=/home/jstatd.all.policy -J-Djava.rmi.server.logCalls=true -J-Djava.rmi.server.hostname=39.103.172.197

vim $JAVA_HOME/jre/lib/security/java.policy 

		permission java.lang.RuntimePermission "*";
        permission java.util.PropertyPermission "*", "read,write";
        permission java.io.FilePermission "/-", "read";
        permission java.net.SocketPermission "*", "connect,resolve,accept,listen";
        permission java.lang.management.ManagementPermission "monitor";

vim /home/jstatd.all.policy
grant codeBase "file:${JAVA_HOME}/lib/tools.jar" {
        permission java.security.AllPermission;
};

chmod 755 /home/jstatd.all.policy 

