// List<List<ProductModel>> emptyFromJson(String str) => List<List<ProductModel>>.from(json.decode(str).map((x) => List<ProductModel>.from(x.map((x) => ProductModel.fromJson(x)))));
//
// String emptyToJson(List<List<ProductModel>> data) => json.encode(List<dynamic>.from(data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class ProductModel {
  ProductModel({
    this.productName,
    this.price,
    this.imageUrl,
    this.isAvailable,
    this.materials,
    this.description,
  });

  String? productName;
  double? price;
  String? imageUrl;
  bool? isAvailable;
  String? description;
  List<String>? materials;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    productName: json["product_name"],
    price: json["price"],
    imageUrl: json["image_url"],
    isAvailable: json["is_available"],
    description: json["description"],
    materials: List<String>.from(json["materials"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "product_name": productName,
    "price": price,
    "image_url": imageUrl,
    "is_available": isAvailable,
    "description": description,
    "materials": List<dynamic>.from(materials!.map((x) => x)),
  };
}

