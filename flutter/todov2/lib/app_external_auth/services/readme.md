# Generar key sha1

# Android debug
- pass: android
keytool -list -v -alias androiddebugkey -keystore ~/.android/debug.keystore 

# Generar key
- keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
- Ingresar pass

# Key generada
- pass: saurmo
 keytool -list -v -alias key -keystore ~/key.jks 

 # Links
- Conexion flutter firebase: https://firebase.google.com/docs/auth/flutter/start?hl=es-419
 - Credenciales: https://console.cloud.google.com/apis/credentials?project=udem-projects
 - https://github.com/settings/applications/new
 - https://blog.openreplay.com/implementing-facebook-authentication-for-flutter/
 
 
