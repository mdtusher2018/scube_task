class HomeEntity {
  final List<CategoryEntity> categories;
  final List<ProductEntity> newArrivals;

  const HomeEntity({required this.categories, required this.newArrivals});
}

class CategoryEntity {
  final String title;
  final String icon;
  final int id;

  const CategoryEntity({
    required this.title,
    required this.icon,
    required this.id,
  });
}

class ProductEntity {
  final int id;
  final String slug;
  final String name;
  final String image;
  final double rating;
  final double price;
  final double? oldPrice;
  final bool isFavorite;

  const ProductEntity({
    required this.id,
    required this.slug,
    required this.name,
    required this.image,
    required this.rating,
    required this.price,
    this.oldPrice,
    this.isFavorite = false,
  });
}
