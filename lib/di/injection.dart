import 'package:flutter_map/di/injection.iconfig.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
Future<void> configureGetIt() async {
  $initGetIt(getIt);
}
