import '../../ui/pages/home_controller.dart';
import '../dependeces_injector.dart';

void setupHomeInjections() {
  DependencesInjector.registerLazySingleton<HomeController>(
    () => HomeController(),
  );
}
