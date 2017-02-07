# Simple Registry

This is a sample project that creates a registry server.

To build it..

`$> mvnw clean package`

Push the app to cloud foundry

`$> cf push custom-euerka-registry -p target/registry-0.0.1-SNAPSHOT.jar -m 512M`


After you push it, create a CUPS service

`$> cf cups eureka-service -r https://registry.local.pcfdev.io`

Bind the `eureka-service` to any of your app. You should be able to manage it.
