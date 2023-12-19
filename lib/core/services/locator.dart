import 'package:get_it/get_it.dart';
import 'package:look_up_demo_app/features/auth/data/auth_repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  /// Auth
  getIt.registerSingleton<AuthRepository>(AuthRepository());
}
