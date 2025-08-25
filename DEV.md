# Developer instructions

## Run app

* `flutter run -d chrome`

## Generate Json serialization classes

* `dart run build_runner build`

## Generate Github Pages

* `flutter build web --base-href "/"`
* `ghp-import -n -p -f build/web`
* Visit the website at [saintmartinlebeau.saintjacquesvaldecher.fr/](https://saintmartinlebeau.saintjacquesvaldecher.fr/).


