### Signing a build (setup)
**Android**  
Once you've created upload keys, place them
inside of `app/build/keystore/{upload_key_name}.jks`. Alternatively,
you'll have to create `keystore.properties` and fill out the following:
```
DEV_STORE_FILE = ../keystores/development.jks
DEV_KEY_ALIAS = [fill this out]
DEV_KEY_PASSWORD = [fill this out]
DEV_STORE_PASSWORD = [fill this out]
STAGING_STORE_FILE = ../keystores/staging.jks
STAGING_KEY_ALIAS = [fill this out]
STAGING_KEY_PASSWORD = [fill this out]
STAGING_STORE_PASSWORD = [fill this out]
PRODUCTION_STORE_FILE = ../keystores/production.jks
PRODUCTION_KEY_ALIAS = [fill this out]
PRODUCTION_KEY_PASSWORD = [fill this out]
PRODUCTION_STORE_PASSWORD = [fill this out]
```

Make sure to replace `[fill this out]` with an actual value. Save the
file under `app/android/keystore.properties`. Final structure should
look similar to the following:
```
- app/
-- android/
--- keystore.properties
--- keystores/
---- development.jks
---- staging.jks
---- production.jks  
```
`keystore.properties` and `*.jks` files should be kept as a secret,
therefor, they are added to `.gitignore` file.

### Build
**Android**
- `flutter build apk --flavor production --dart-define=env=production` -
  Builds an .apk for production env.
- `flutter build apk --flavor staging --dart-define=env=staging` -
  Builds an .apk for staging env.
- `flutter build apk --flavor development --dart-define=env=development` - Builds an .apk for
  development env.

