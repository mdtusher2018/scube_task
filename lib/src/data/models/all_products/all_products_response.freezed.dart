// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllProductsResponse {

 ProductsPagination? get products;
/// Create a copy of AllProductsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllProductsResponseCopyWith<AllProductsResponse> get copyWith => _$AllProductsResponseCopyWithImpl<AllProductsResponse>(this as AllProductsResponse, _$identity);

  /// Serializes this AllProductsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllProductsResponse&&(identical(other.products, products) || other.products == products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,products);

@override
String toString() {
  return 'AllProductsResponse(products: $products)';
}


}

/// @nodoc
abstract mixin class $AllProductsResponseCopyWith<$Res>  {
  factory $AllProductsResponseCopyWith(AllProductsResponse value, $Res Function(AllProductsResponse) _then) = _$AllProductsResponseCopyWithImpl;
@useResult
$Res call({
 ProductsPagination? products
});


$ProductsPaginationCopyWith<$Res>? get products;

}
/// @nodoc
class _$AllProductsResponseCopyWithImpl<$Res>
    implements $AllProductsResponseCopyWith<$Res> {
  _$AllProductsResponseCopyWithImpl(this._self, this._then);

  final AllProductsResponse _self;
  final $Res Function(AllProductsResponse) _then;

/// Create a copy of AllProductsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = freezed,}) {
  return _then(_self.copyWith(
products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as ProductsPagination?,
  ));
}
/// Create a copy of AllProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsPaginationCopyWith<$Res>? get products {
    if (_self.products == null) {
    return null;
  }

  return $ProductsPaginationCopyWith<$Res>(_self.products!, (value) {
    return _then(_self.copyWith(products: value));
  });
}
}


/// Adds pattern-matching-related methods to [AllProductsResponse].
extension AllProductsResponsePatterns on AllProductsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AllProductsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllProductsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AllProductsResponse value)  $default,){
final _that = this;
switch (_that) {
case _AllProductsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AllProductsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AllProductsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductsPagination? products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllProductsResponse() when $default != null:
return $default(_that.products);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductsPagination? products)  $default,) {final _that = this;
switch (_that) {
case _AllProductsResponse():
return $default(_that.products);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductsPagination? products)?  $default,) {final _that = this;
switch (_that) {
case _AllProductsResponse() when $default != null:
return $default(_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AllProductsResponse implements AllProductsResponse {
  const _AllProductsResponse({this.products});
  factory _AllProductsResponse.fromJson(Map<String, dynamic> json) => _$AllProductsResponseFromJson(json);

@override final  ProductsPagination? products;

/// Create a copy of AllProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllProductsResponseCopyWith<_AllProductsResponse> get copyWith => __$AllProductsResponseCopyWithImpl<_AllProductsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AllProductsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllProductsResponse&&(identical(other.products, products) || other.products == products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,products);

@override
String toString() {
  return 'AllProductsResponse(products: $products)';
}


}

/// @nodoc
abstract mixin class _$AllProductsResponseCopyWith<$Res> implements $AllProductsResponseCopyWith<$Res> {
  factory _$AllProductsResponseCopyWith(_AllProductsResponse value, $Res Function(_AllProductsResponse) _then) = __$AllProductsResponseCopyWithImpl;
@override @useResult
$Res call({
 ProductsPagination? products
});


@override $ProductsPaginationCopyWith<$Res>? get products;

}
/// @nodoc
class __$AllProductsResponseCopyWithImpl<$Res>
    implements _$AllProductsResponseCopyWith<$Res> {
  __$AllProductsResponseCopyWithImpl(this._self, this._then);

  final _AllProductsResponse _self;
  final $Res Function(_AllProductsResponse) _then;

/// Create a copy of AllProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = freezed,}) {
  return _then(_AllProductsResponse(
products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as ProductsPagination?,
  ));
}

/// Create a copy of AllProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsPaginationCopyWith<$Res>? get products {
    if (_self.products == null) {
    return null;
  }

  return $ProductsPaginationCopyWith<$Res>(_self.products!, (value) {
    return _then(_self.copyWith(products: value));
  });
}
}


/// @nodoc
mixin _$ProductsPagination {

@JsonKey(name: 'current_page') int? get currentPage; List<Product>? get data;@JsonKey(name: 'first_page_url') String? get firstPageUrl; int? get from;@JsonKey(name: 'last_page') int? get lastPage;@JsonKey(name: 'last_page_url') String? get lastPageUrl; List<PaginationLink>? get links;@JsonKey(name: 'next_page_url') String? get nextPageUrl; String? get path;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'prev_page_url') String? get prevPageUrl; int? get to; int? get total;
/// Create a copy of ProductsPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsPaginationCopyWith<ProductsPagination> get copyWith => _$ProductsPaginationCopyWithImpl<ProductsPagination>(this as ProductsPagination, _$identity);

  /// Serializes this ProductsPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsPagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.firstPageUrl, firstPageUrl) || other.firstPageUrl == firstPageUrl)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.lastPageUrl, lastPageUrl) || other.lastPageUrl == lastPageUrl)&&const DeepCollectionEquality().equals(other.links, links)&&(identical(other.nextPageUrl, nextPageUrl) || other.nextPageUrl == nextPageUrl)&&(identical(other.path, path) || other.path == path)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.prevPageUrl, prevPageUrl) || other.prevPageUrl == prevPageUrl)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(data),firstPageUrl,from,lastPage,lastPageUrl,const DeepCollectionEquality().hash(links),nextPageUrl,path,perPage,prevPageUrl,to,total);

@override
String toString() {
  return 'ProductsPagination(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class $ProductsPaginationCopyWith<$Res>  {
  factory $ProductsPaginationCopyWith(ProductsPagination value, $Res Function(ProductsPagination) _then) = _$ProductsPaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage, List<Product>? data,@JsonKey(name: 'first_page_url') String? firstPageUrl, int? from,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'last_page_url') String? lastPageUrl, List<PaginationLink>? links,@JsonKey(name: 'next_page_url') String? nextPageUrl, String? path,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'prev_page_url') String? prevPageUrl, int? to, int? total
});




}
/// @nodoc
class _$ProductsPaginationCopyWithImpl<$Res>
    implements $ProductsPaginationCopyWith<$Res> {
  _$ProductsPaginationCopyWithImpl(this._self, this._then);

  final ProductsPagination _self;
  final $Res Function(ProductsPagination) _then;

/// Create a copy of ProductsPagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? data = freezed,Object? firstPageUrl = freezed,Object? from = freezed,Object? lastPage = freezed,Object? lastPageUrl = freezed,Object? links = freezed,Object? nextPageUrl = freezed,Object? path = freezed,Object? perPage = freezed,Object? prevPageUrl = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Product>?,firstPageUrl: freezed == firstPageUrl ? _self.firstPageUrl : firstPageUrl // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,lastPageUrl: freezed == lastPageUrl ? _self.lastPageUrl : lastPageUrl // ignore: cast_nullable_to_non_nullable
as String?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<PaginationLink>?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsPagination].
extension ProductsPaginationPatterns on ProductsPagination {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsPagination() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsPagination value)  $default,){
final _that = this;
switch (_that) {
case _ProductsPagination():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsPagination value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsPagination() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage,  List<Product>? data, @JsonKey(name: 'first_page_url')  String? firstPageUrl,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'last_page_url')  String? lastPageUrl,  List<PaginationLink>? links, @JsonKey(name: 'next_page_url')  String? nextPageUrl,  String? path, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  String? prevPageUrl,  int? to,  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsPagination() when $default != null:
return $default(_that.currentPage,_that.data,_that.firstPageUrl,_that.from,_that.lastPage,_that.lastPageUrl,_that.links,_that.nextPageUrl,_that.path,_that.perPage,_that.prevPageUrl,_that.to,_that.total);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage,  List<Product>? data, @JsonKey(name: 'first_page_url')  String? firstPageUrl,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'last_page_url')  String? lastPageUrl,  List<PaginationLink>? links, @JsonKey(name: 'next_page_url')  String? nextPageUrl,  String? path, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  String? prevPageUrl,  int? to,  int? total)  $default,) {final _that = this;
switch (_that) {
case _ProductsPagination():
return $default(_that.currentPage,_that.data,_that.firstPageUrl,_that.from,_that.lastPage,_that.lastPageUrl,_that.links,_that.nextPageUrl,_that.path,_that.perPage,_that.prevPageUrl,_that.to,_that.total);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage,  List<Product>? data, @JsonKey(name: 'first_page_url')  String? firstPageUrl,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'last_page_url')  String? lastPageUrl,  List<PaginationLink>? links, @JsonKey(name: 'next_page_url')  String? nextPageUrl,  String? path, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  String? prevPageUrl,  int? to,  int? total)?  $default,) {final _that = this;
switch (_that) {
case _ProductsPagination() when $default != null:
return $default(_that.currentPage,_that.data,_that.firstPageUrl,_that.from,_that.lastPage,_that.lastPageUrl,_that.links,_that.nextPageUrl,_that.path,_that.perPage,_that.prevPageUrl,_that.to,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsPagination implements ProductsPagination {
  const _ProductsPagination({@JsonKey(name: 'current_page') this.currentPage, final  List<Product>? data, @JsonKey(name: 'first_page_url') this.firstPageUrl, this.from, @JsonKey(name: 'last_page') this.lastPage, @JsonKey(name: 'last_page_url') this.lastPageUrl, final  List<PaginationLink>? links, @JsonKey(name: 'next_page_url') this.nextPageUrl, this.path, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'prev_page_url') this.prevPageUrl, this.to, this.total}): _data = data,_links = links;
  factory _ProductsPagination.fromJson(Map<String, dynamic> json) => _$ProductsPaginationFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
 final  List<Product>? _data;
@override List<Product>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'first_page_url') final  String? firstPageUrl;
@override final  int? from;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override@JsonKey(name: 'last_page_url') final  String? lastPageUrl;
 final  List<PaginationLink>? _links;
@override List<PaginationLink>? get links {
  final value = _links;
  if (value == null) return null;
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'next_page_url') final  String? nextPageUrl;
@override final  String? path;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'prev_page_url') final  String? prevPageUrl;
@override final  int? to;
@override final  int? total;

/// Create a copy of ProductsPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsPaginationCopyWith<_ProductsPagination> get copyWith => __$ProductsPaginationCopyWithImpl<_ProductsPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsPagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.firstPageUrl, firstPageUrl) || other.firstPageUrl == firstPageUrl)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.lastPageUrl, lastPageUrl) || other.lastPageUrl == lastPageUrl)&&const DeepCollectionEquality().equals(other._links, _links)&&(identical(other.nextPageUrl, nextPageUrl) || other.nextPageUrl == nextPageUrl)&&(identical(other.path, path) || other.path == path)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.prevPageUrl, prevPageUrl) || other.prevPageUrl == prevPageUrl)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(_data),firstPageUrl,from,lastPage,lastPageUrl,const DeepCollectionEquality().hash(_links),nextPageUrl,path,perPage,prevPageUrl,to,total);

@override
String toString() {
  return 'ProductsPagination(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class _$ProductsPaginationCopyWith<$Res> implements $ProductsPaginationCopyWith<$Res> {
  factory _$ProductsPaginationCopyWith(_ProductsPagination value, $Res Function(_ProductsPagination) _then) = __$ProductsPaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage, List<Product>? data,@JsonKey(name: 'first_page_url') String? firstPageUrl, int? from,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'last_page_url') String? lastPageUrl, List<PaginationLink>? links,@JsonKey(name: 'next_page_url') String? nextPageUrl, String? path,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'prev_page_url') String? prevPageUrl, int? to, int? total
});




}
/// @nodoc
class __$ProductsPaginationCopyWithImpl<$Res>
    implements _$ProductsPaginationCopyWith<$Res> {
  __$ProductsPaginationCopyWithImpl(this._self, this._then);

  final _ProductsPagination _self;
  final $Res Function(_ProductsPagination) _then;

/// Create a copy of ProductsPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? data = freezed,Object? firstPageUrl = freezed,Object? from = freezed,Object? lastPage = freezed,Object? lastPageUrl = freezed,Object? links = freezed,Object? nextPageUrl = freezed,Object? path = freezed,Object? perPage = freezed,Object? prevPageUrl = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_ProductsPagination(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Product>?,firstPageUrl: freezed == firstPageUrl ? _self.firstPageUrl : firstPageUrl // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,lastPageUrl: freezed == lastPageUrl ? _self.lastPageUrl : lastPageUrl // ignore: cast_nullable_to_non_nullable
as String?,links: freezed == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<PaginationLink>?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PaginationLink {

 String? get url; String? get label; bool? get active;
/// Create a copy of PaginationLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationLinkCopyWith<PaginationLink> get copyWith => _$PaginationLinkCopyWithImpl<PaginationLink>(this as PaginationLink, _$identity);

  /// Serializes this PaginationLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationLink&&(identical(other.url, url) || other.url == url)&&(identical(other.label, label) || other.label == label)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,label,active);

@override
String toString() {
  return 'PaginationLink(url: $url, label: $label, active: $active)';
}


}

/// @nodoc
abstract mixin class $PaginationLinkCopyWith<$Res>  {
  factory $PaginationLinkCopyWith(PaginationLink value, $Res Function(PaginationLink) _then) = _$PaginationLinkCopyWithImpl;
@useResult
$Res call({
 String? url, String? label, bool? active
});




}
/// @nodoc
class _$PaginationLinkCopyWithImpl<$Res>
    implements $PaginationLinkCopyWith<$Res> {
  _$PaginationLinkCopyWithImpl(this._self, this._then);

  final PaginationLink _self;
  final $Res Function(PaginationLink) _then;

/// Create a copy of PaginationLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,Object? label = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationLink].
extension PaginationLinkPatterns on PaginationLink {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationLink() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationLink value)  $default,){
final _that = this;
switch (_that) {
case _PaginationLink():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationLink value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationLink() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? url,  String? label,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationLink() when $default != null:
return $default(_that.url,_that.label,_that.active);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? url,  String? label,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _PaginationLink():
return $default(_that.url,_that.label,_that.active);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? url,  String? label,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _PaginationLink() when $default != null:
return $default(_that.url,_that.label,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationLink implements PaginationLink {
  const _PaginationLink({this.url, this.label, this.active});
  factory _PaginationLink.fromJson(Map<String, dynamic> json) => _$PaginationLinkFromJson(json);

@override final  String? url;
@override final  String? label;
@override final  bool? active;

/// Create a copy of PaginationLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationLinkCopyWith<_PaginationLink> get copyWith => __$PaginationLinkCopyWithImpl<_PaginationLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationLink&&(identical(other.url, url) || other.url == url)&&(identical(other.label, label) || other.label == label)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,label,active);

@override
String toString() {
  return 'PaginationLink(url: $url, label: $label, active: $active)';
}


}

/// @nodoc
abstract mixin class _$PaginationLinkCopyWith<$Res> implements $PaginationLinkCopyWith<$Res> {
  factory _$PaginationLinkCopyWith(_PaginationLink value, $Res Function(_PaginationLink) _then) = __$PaginationLinkCopyWithImpl;
@override @useResult
$Res call({
 String? url, String? label, bool? active
});




}
/// @nodoc
class __$PaginationLinkCopyWithImpl<$Res>
    implements _$PaginationLinkCopyWith<$Res> {
  __$PaginationLinkCopyWithImpl(this._self, this._then);

  final _PaginationLink _self;
  final $Res Function(_PaginationLink) _then;

/// Create a copy of PaginationLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,Object? label = freezed,Object? active = freezed,}) {
  return _then(_PaginationLink(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
