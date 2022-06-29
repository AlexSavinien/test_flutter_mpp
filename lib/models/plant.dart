// ignore_for_file: public_member_api_docs, sort_constructors_first
class Plant {
  String title;
  String description;
  String imageUrl;
  String localization;
  double price;
  int water;
  int fertilizing;
  bool isIndoor;
  bool isOutdoor;
  bool isTop;

  Plant({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.water,
    required this.fertilizing,
    required this.isIndoor,
    required this.isOutdoor,
    required this.isTop,
    required this.localization,
  });
}
