import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primaryColor = Color(0xFF6C63FF);
  static const Color primaryLight = Color(0xFFA5A2FF);
  static const Color primaryDark = Color(0xFF4A42CC);
  
  // Text Colors
  static const Color textPrimary = Color(0xFF2D3748);
  static const Color textSecondary = Color(0xFF718096);
  static const Color textLight = Color(0xFFA0AEC0);
  
  // Background Colors
  static const Color background = Color(0xFFFFFFFF);
  static const Color backgroundLight = Color(0xFFF8FAFC);
  static const Color backgroundDark = Color(0xFF1A202C);
  
  // Accent Colors
  static const Color accentPink = Color(0xFFFF6B8B);
  static const Color accentYellow = Color(0xFFFFD166);
  static const Color accentTeal = Color(0xFF4ECDC4);
  
  // Status Colors
  static const Color success = Color(0xFF48BB78);
  static const Color error = Color(0xFFF56565);
  static const Color warning = Color(0xFFED8936);
  static const Color info = Color(0xFF4299E1);
  
  // Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color gray50 = Color(0xFFF7FAFC);
  static const Color gray100 = Color(0xFFEDF2F7);
  static const Color gray200 = Color(0xFFE2E8F0);
  static const Color gray300 = Color(0xFFCBD5E0);
  static const Color gray400 = Color(0xFFA0AEC0);
  static const Color gray500 = Color(0xFF718096);
  static const Color gray600 = Color(0xFF4A5568);
  static const Color gray700 = Color(0xFF2D3748);
  static const Color gray800 = Color(0xFF1A202C);
  static const Color gray900 = Color(0xFF171923);
  
  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF6C63FF), Color(0xFFA5A2FF)],
  );
  
  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFF6B8B), Color(0xFFFF8E53)],
  );
}
