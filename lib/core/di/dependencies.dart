import 'package:get/get.dart';

import '../../../data/repositories/landing_repository_impl.dart';
import '../../../domain/repositories/landing_repository.dart';
import '../../../domain/usecases/get_features.dart';
import '../../presentation/controllers/home_controller.dart';

class Dependencies {
  static Future<void> init() async {
    // Repositories
    Get.lazyPut<LandingRepository>(
      () => LandingRepositoryImpl(),
      fenix: true,
    );

    // Use cases
    Get.lazyPut(
      () => GetFeatures(Get.find<LandingRepository>()),
      fenix: true,
    );

    // Controllers
    Get.lazyPut(
      () => HomeController(
        getFeatures: Get.find<GetFeatures>(),
      ),
      fenix: true,
    );
  }
}
