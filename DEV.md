# Developer instructions

## Run app

* `flutter run -d chrome`

## Generate Json serialization classes

* `dart run build_runner build`

## Test before uploading
Build the app. Then serve the app locally and test.
* `flutter build web --base-href "/"`
* `dart pub global activate dhttpd`
* `dhttpd --path build/web`
* Visit the website at [localhost:8080/](http://localhost:8080/).


## Generate Github Pages

* `flutter build web --base-href "/"`
* `ghp-import -n -p -f build/web`
* Visit the website at [saintmartinlebeau.saintjacquesvaldecher.fr/](https://saintmartinlebeau.saintjacquesvaldecher.fr/).


