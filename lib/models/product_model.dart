class ProductModel {
  final int id;
  final String title;
  final num price;
  final String image;
  final String description;
  final String category;
  final RatingModel? rating;
  ProductModel( {
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.description,
    required this.category,
    required this.rating,
});
  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json['id'],
    title: json['title'],
    price: json['price'] is num ? json['price'] : num.tryParse(json['price']),
    image: json['image'],
    rating: json['rating'] != null ? RatingModel.fromJson(json['rating']) : null,
    description: json["description"],
    category: json["category"],
  );
}

class RatingModel{
  final int count;
  final num rate;
  RatingModel({
    required this.count,
    required this.rate,
  });
  factory RatingModel.fromJson(Map<String, dynamic> json) => RatingModel(
    count: json['count'],
    rate: json['rate'],
  );
}