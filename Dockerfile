FROM adoptopenjdk:11-jre-hotspot as builder
ARG DEPENDENCY=build/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
EXPOSE 80
CMD echo Starting Discovery Service Docker Container
ENTRYPOINT ["java","-cp","app:app/lib/*","com.shell.siep.gto.services.DiscoveryApplication"]

