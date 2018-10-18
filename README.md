# pem2jks
Convert SSL certificate from .pem to .jks format


### Create a PKCS12 file containing full chain and private key
```bash
openssl pkcs12 -export -in fullchain.pem -inkey privkey.pem -out pkcs.p12 -name NAME
```

### Convert PKCS12 to Keystore
```bash
keytool -importkeystore -deststorepass PASSWORD_STORE -destkeypass PASSWORD_KEYPASS -destkeystore keystore.jks -srckeystore pkcs.p12 -srcstoretype PKCS12 -srcstorepass STORE_PASS -alias NAME
```