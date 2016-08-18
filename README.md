# Simple Registry

This is a sample project that creates a registry server.

To build it..

`$> mvn clean package`

Push the app to cloud foundry

`$> cf push registry -p target/registry-0.0.1-SNAPSHOT.jar -m 256M`


After you push it, create a CUPS service

`$> cf cups service-registry -r https://registry.local.pcfdev.io`

Bind the `service-registry` to any of your app. You should be able to manage it.
