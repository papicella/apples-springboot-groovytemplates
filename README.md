# Spring Boot with Groovy templates

This app demonstrates the use of Groovy templates in Spring Boot. It also makes use of GORM for persistence.
It is based off the demo below, with a few small changes.

https://spring.io/blog/2014/05/28/using-the-innovative-groovy-template-engine-in-spring-boot

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
./gradlew jar
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

```

Invoke application and home page is as follows

