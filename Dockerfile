FROM openjdk:8
COPY jarstaging/com/valaxy/demo-workshop/2.1.3/demo-workshop-2.1.3.jar divya.jar 
ENTRYPOINT ["java","-jar","divya.jar"]