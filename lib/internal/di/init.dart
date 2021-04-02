import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:mobile_corporate_portal/internal/di/alice.dart';
import 'package:mobile_corporate_portal/internal/di/global.dart';
import 'package:mobile_corporate_portal/internal/di/sharedpreferences.dart';

void setupInitial() {
  GetIt.I.registerSingleton<GlobalDI>(GlobalDI());
  GetIt.I.registerLazySingleton<AliceDI>(() => AliceDI());
    GetIt.I.registerSingletonAsync<SharedPreferencesDI>(
    SharedPreferencesDI.initPrefs,
  );
}
void setupAfterRender() {}