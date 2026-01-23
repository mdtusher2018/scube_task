import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scube_task/src/data/models/product_model.dart';
import 'package:scube_task/src/domain/entites/home_entity.dart';

import '../category_model.dart';
part 'home_response.freezed.dart';
part 'home_response.g.dart';

@freezed
abstract class HomeResponse with _$HomeResponse {
  const factory HomeResponse({
    required List<Category> homepage_categories,

    required List<Product> newArrivalProducts,
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

/// --------------------
/// HomeResponse → HomeEntity
/// --------------------
extension HomeResponseMapper on HomeResponse {
  HomeEntity toEntity() {
    return HomeEntity(
      categories: homepage_categories
          .map((category) => category.toEntity())
          .toList(),
      newArrivals: newArrivalProducts
          .map((product) => product.toEntity())
          .toList(),
    );
  }
}

/// --------------------
/// Category → CategoryEntity
/// --------------------
extension CategoryMapper on Category {
  CategoryEntity toEntity() {
    return CategoryEntity(title: name, icon: image ?? icon, id: id);
  }
}

/// --------------------
/// Product → ProductEntity
/// --------------------
extension ProductMapper on Product {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      slug: slug,
      name: name,
      image: thumb_image,
      rating: double.tryParse(averageRating) ?? 0,
      price: offer_price ?? price,
      oldPrice: offer_price != null ? price : null,
      isFavorite: false, // later from wishlist API
    );
  }
}
