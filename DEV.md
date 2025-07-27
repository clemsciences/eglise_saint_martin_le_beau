# Developer instructions

## Run app

* `flutter run -d chrome`

## Generate Json serialization classes

* `dart run build_runner build`

## Generate Github Pages

* `flutter build web --base-href "/eglise_saint_martin_le_beau/"`
* `ghp-import -n -p -f build/web`
* Visit the website at [https://clemsciences.github.io/eglise_saint_martin_le_beau/](https://clemsciences.github.io/eglise_saint_martin_le_beau/).


