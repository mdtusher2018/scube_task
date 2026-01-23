class ProductDetailsEntity {
  final int id;
  final String name;
  final String categoryName;
  final String image;
  final List<String> gallery;
  final double price;
  final double? offerPrice;
  final double rating;
  final int totalReviews;
  final String shortDescription;
  final String longDescription;
  final List<String> features;

  const ProductDetailsEntity({
    required this.id,
    required this.name,
    required this.categoryName,
    required this.image,
    required this.gallery,
    required this.price,
    this.offerPrice,
    required this.rating,
    required this.totalReviews,
    required this.shortDescription,
    required this.longDescription,
    required this.features,
  });
}
