FROM openjdk:8
COPY jarstaging/com/valaxy/demo-workshop/2.1.2 ttrend.jar 
ENTRYPOINT ["java","-jar","ttrend.jar"]