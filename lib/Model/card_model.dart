class Cart {
  int? id;
  String? productId;
  String? productName;
  int? initialPrice;
  int? productPrice;
  int? quantity;
  String? unitTag;
  String? image;

  Cart(
      {this.id,
        this.productId,
        this.productName,
        this.initialPrice,
        this.productPrice,
        this.quantity,
        this.unitTag,
        this.image});

  Cart.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['productId'];
    productName = json['productName'];
    initialPrice = json['initialPrice'];
    productPrice = json['productPrice'];
    quantity = json['quantity'];
    unitTag = json['unitTag'];
    image = json['image'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['productId'] = this.productId;
    data['productName'] = this.productName;
    data['initialPrice'] = this.initialPrice;
    data['productPrice'] = this.productPrice;
    data['quantity'] = this.quantity;
    data['unitTag'] = this.unitTag;
    data['image'] = this.image;
    return data;
  }
}