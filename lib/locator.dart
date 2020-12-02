
import 'package:cloudmall_v2/core/services/dialog_service.dart';
import 'package:cloudmall_v2/core/services/navigator_service.dart';

//Add view models

// Add other services

import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setUpLocator(){
  // Register Services
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());
}