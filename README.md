# Spring Boot with Groovy templates

This app demonstrates the use of Groovy templates in Spring Boot. It also makes use of GORM for persistence.
It is based off the demo below, with a few small changes.

https://spring.io/blog/2014/05/28/using-the-innovative-groovy-template-engine-in-spring-boot

<h2> Run Locally </h2>

Clone the repository then execute the following:

```
cd apples-springboot-groovytemplates
./gradlew run
```

<h2> Deploy to Bluemix </h2>

- Clone repo as shown below

```
git clone https://github.com/papicella/apples-springboot-groovytemplates.git
```

- Build as follows

```
./gradlew build
```

- Edit manifest.yml to give a unique name to the application

```
applications:
- name: pas-springboot-groovytemplates
  memory: 512M
  instances: 1
  host: pas-springboot-groovytemplates
  domain: mybluemix.net
  path: ./build/libs/boot-templates-1.0.0.jar
```

- Deploy as shown below

```
pas@Pass-MacBook-Pro:~/ibm/DemoProjects/spring-starter/springboot-groovytemplates$ cf push
Using manifest file /Users/pas/ibm/DemoProjects/spring-starter/springboot-groovytemplates/manifest.yml

Creating app pas-springboot-groovytemplates in org pasapi@au1.ibm.com / space dev as pasapi@au1.ibm.com...
OK

Creating route pas-springboot-groovytemplates.mybluemix.net...
OK

Binding pas-springboot-groovytemplates.mybluemix.net to pas-springboot-groovytemplates...
OK

Uploading pas-springboot-groovytemplates...
Uploading app files from: /Users/pas/ibm/DemoProjects/spring-starter/springboot-groovytemplates/build/libs/boot-templates-1.0.0.jar
Uploading 1.5M, 125 files
Done uploading
OK

Starting app pas-springboot-groovytemplates in org pasapi@au1.ibm.com / space dev as pasapi@au1.ibm.com...
-----> Downloaded app package (35M)
-----> Liberty Buildpack Version: v1.13-20150209-1122
-----> Retrieving App Management Agent 2015.02.04_102631 (com.ibm.ws.cloudoe.app-mgmt-proxy-agent.zip) ... (0.0s)
-----> Downloading Auto Reconfiguration 1.7.0_RELEASE from https://download.run.pivotal.io/auto-reconfiguration/auto-reconfiguration-1.7.0_RELEASE.jar (0.9s)
-----> Liberty buildpack is done creating the droplet

-----> Uploading droplet (87M)

0 of 1 instances running, 1 starting
0 of 1 instances running, 1 starting
0 of 1 instances running, 1 starting
0 of 1 instances running, 1 starting
0 of 1 instances running, 1 starting
1 of 1 instances running

App started


OK

App pas-springboot-groovytemplates was started using this command `$PWD/.java/jre/bin/java -Xtune:virtualized -Xmx384M -Xdump:none -Xdump:heap:defaults:file=./../dumps/heapdump.%Y%m%d.%H%M%S.%pid.%seq.phd -Xdump:java:defaults:file=./../dumps/javacore.%Y%m%d.%H%M%S.%pid.%seq.txt -Xdump:snap:defaults:file=./../dumps/Snap.%Y%m%d.%H%M%S.%pid.%seq.trc -Xdump:heap+java+snap:events=user -Xdump:tool:events=systhrow,filter=java/lang/OutOfMemoryError,request=serial+exclusive,exec=./.buildpack-diagnostics/killjava.sh $JVM_ARGS org.springframework.boot.loader.JarLauncher --server.port=$PORT`

Showing health and status for app pas-springboot-groovytemplates in org pasapi@au1.ibm.com / space dev as pasapi@au1.ibm.com...
OK

requested state: started
instances: 1/1
usage: 512M x 1 instances
urls: pas-springboot-groovytemplates.mybluemix.net
last uploaded: Sun Mar 15 09:27:21 +0000 2015

     state     since                    cpu    memory           disk           details
#0   running   2015-03-15 08:28:51 PM   1.2%   225.8M of 512M   122.5M of 1G
```

Invoke application and home page is as follows

![alt tag](https://dl.dropboxusercontent.com/u/15829935/bluemix-docs/images/srpingboot-groovy-img1.png)
