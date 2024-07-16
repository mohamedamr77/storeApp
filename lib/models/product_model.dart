class ProductModel {
  final double id;
  final String title;
  final double price;
  final String image;
  final String description;
  final String category;
  final RatingModel rating;
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
    price: json['price'],
    image: json['image'],
    rating: RatingModel.fromJson(json['rating']),
    description: json["description"],
    category: json["category"],
  );
}

class RatingModel{
  final double count;
  final double rate;
  RatingModel({
    required this.count,
    required this.rate,
  });
  factory RatingModel.fromJson(Map<String, dynamic> json) => RatingModel(
    count: json['count'],
    rate: json['rate'],
  );
}