import 'package:flutter_landing_page/domain/entities/feature_item.dart';
import 'package:flutter_landing_page/domain/repositories/landing_repository.dart';

class GetFeatures {
  final LandingRepository repository;

  GetFeatures(this.repository);

  Future<List<FeatureItem>> call() async {
    return await repository.getFeatures();
  }
}
