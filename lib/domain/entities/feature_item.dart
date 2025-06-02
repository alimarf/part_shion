class FeatureItem {
  final String title;
  final String description;
  final String icon;

  FeatureItem({
    required this.title,
    required this.description,
    required this.icon,
  });

  factory FeatureItem.empty() => FeatureItem(
        title: '',
        description: '',
        icon: '',
      );
}
