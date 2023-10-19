# PASOS PARA FIRMAS LA APP

1. Generar el keystore

keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload



2. Ingresar password
udem-tareas-app

3. Nombre y apellidos
santiago urrego

4. organizacion
udemedellin

5. nombre organizacion
universidad de medellin

6. Ubicacion
med, ant, co

7. Genera el keystore 
[Storing /Users/santiagourrego/upload-keystore.jks]

// generar el sh1 para debug 
keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android
         SHA1: 36:FA:5C:0B:9D:2E:8E:1E:04:1F:D2:E9:D7:1D:3D:A4:24:C9:16:B0
         SHA256: C0:12:44:E3:5A:54:E7:89:B4:BA:52:EF:CF:77:49:A0:29:00:F8:73:73:EC:7F:88:85:37:A4:C6:55:B2:9E:8B