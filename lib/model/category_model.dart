class Category {
  List<Data>? data;

  Category({this.data});

  Category.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? categoryId;
  String? image;
  String? imageName;
  String? category;
  String? description;

  Data(
      {this.categoryId,
        this.image,
        this.imageName,
        this.category,
        this.description});

  Data.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    image = json['image'];
    imageName = json['image_name'];
    category = json['category'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['image'] = this.image;
    data['image_name'] = this.imageName;
    data['category'] = this.category;
    data['description'] = this.description;
    return data;
  }
}