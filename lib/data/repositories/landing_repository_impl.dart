import 'package:flutter_landing_page/domain/entities/feature_item.dart';
import 'package:flutter_landing_page/domain/repositories/landing_repository.dart';

class LandingRepositoryImpl implements LandingRepository {
  @override
  Future<List<FeatureItem>> getFeatures() async {
    // In a real app, this would be an API call
    await Future.delayed(const Duration(milliseconds: 500));
    
    return [
      FeatureItem(
        title: 'Fast Development',
        description: 'Build beautiful UIs with Flutter\'s hot reload.',
        icon: '🚀',
      ),
      FeatureItem(
        title: 'Clean Code',
        description: 'Follows clean architecture principles for maintainable code.',
        icon: '🧹',
      ),
      FeatureItem(
        title: 'GetX State Management',
        description: 'Efficient state management with GetX for better performance.',
        icon: '⚡',
      ),
    ];
  }

  @override
  Future<void> subscribeToNewsletter(String email) async {
    // In a real app, this would be an API call
    await Future.delayed(const Duration(seconds: 1));
    // Simulate API call
    if (email.isNotEmpty) {
      return;
    } else {
      throw Exception('Email cannot be empty');
    }
  }
}
