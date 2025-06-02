import 'package:flutter_landing_page/domain/entities/feature_item.dart';

abstract class LandingRepository {
  Future<List<FeatureItem>> getFeatures();
  Future<void> subscribeToNewsletter(String email);
}
