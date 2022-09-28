import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

abstract class GeoInjectableModule {
  @lazySingleton
  Geolocator get geolocator => Geolocator();
}
