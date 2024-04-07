class ProductsResponse {
  final int id;
  final String name;
  final String image;
  final String price;
  final int? discount;
  final double? discountedPrice;
  final double? rating;
  final int reviewCount;

  ProductsResponse({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    this.discount,
    this.discountedPrice,
    this.rating,
    required this.reviewCount,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      ProductsResponse(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        price: json["price"],
        discount: json["discount"],
        discountedPrice: json["discounted_price"],
        rating: (json["rating"] as num?)?.toDouble() ?? 0.0,
        reviewCount: json["review_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "price": price,
        "discount": discount,
        "discounted_price": discountedPrice,
        "rating": rating,
        "review_count": reviewCount,
      };
}
