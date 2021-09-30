DMN Traffic Violatione application with SpringBoot
========================================

SpringBoot version of DMN Traffic Violation application that show case capabili`ties of DMN



Running the application locally
------------------------------

Build application

```
mvn clean install 
```

Next you can start application with:

```
java -jar target/traffic-violation-service-1.0.0-SNAPSHOT-1.0.0.jar
```

To access swagger ui simply go to http://localhost:8090/rest/api-docs?url=../swagger.json
To trigger a request to the DMN Traffic Violation project. Post payload to the following url:

http://localhost:8090/rest/server/containers/traffic-violation-kjar-1.0.0-SNAPSHOT/dmn

Sample Payload

{
  "model-namespace": "https://github.com/kiegroup/drools/kie-dmn/_A4BCA8B8-CF08-433F-93B2-A2598F19ECFF",
  "model-name": "Traffic Violation",
  "dmn-context": {
    "Driver": {
      "Points": 15
    },
    "Violation": {
      "Type": "speed",
      "Actual Speed": 135,
      "Speed Limit": 100
    }
  }
}
 
