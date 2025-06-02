import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/entities/feature_item.dart';
import '../../../domain/usecases/get_features.dart';

class HomeController extends GetxController {
  final GetFeatures getFeatures;
  
  final isLoading = false.obs;
  final features = <FeatureItem>[].obs;
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final isSubscribing = false.obs;
  final isSubscribed = false.obs;

  HomeController({required this.getFeatures});

  @override
  void onInit() {
    super.onInit();
    fetchFeatures();
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }

  Future<void> fetchFeatures() async {
    try {
      isLoading.value = true;
      final result = await getFeatures();
      features.assignAll(result);
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to load features',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> subscribeToNewsletter() async {
    if (!formKey.currentState!.validate()) return;
    
    try {
      isSubscribing.value = true;
      // In a real app, you would call the repository here
      await Future.delayed(const Duration(seconds: 1)); // Simulate API call
      isSubscribed.value = true;
      emailController.clear();
      Get.snackbar(
        'Success!',
        'Thank you for subscribing to our newsletter!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to subscribe. Please try again later.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } finally {
      isSubscribing.value = false;
    }
  }
}
