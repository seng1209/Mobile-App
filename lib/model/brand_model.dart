class Brand {
  List<Data>? data;

  Brand({this.data});

  Brand.fromJson(Map<String, dynamic> json) {
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
  int? brandId;
  String? image;
  String? imageName;
  String? brand;
  String? description;

  Data(
      {this.brandId, this.image, this.imageName, this.brand, this.description});

  Data.fromJson(Map<String, dynamic> json) {
    brandId = json['brand_id'];
    image = json['image'];
    imageName = json['image_name'];
    brand = json['brand'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brand_id'] = this.brandId;
    data['image'] = this.image;
    data['image_name'] = this.imageName;
    data['brand'] = this.brand;
    data['description'] = this.description;
    return data;
  }
}