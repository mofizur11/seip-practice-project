class Model {

  String imageUrl;
  String productName;
  String productType;
  String price;

  Model(this.imageUrl, this.productName, this.productType, this.price);

  static List<Model> getProduct(){
    return [
      Model("asstes/product1.jpg", "AKG N700NCM2 Wireless", "Headphones", "199.00"),
      Model("asstes/product2.jpg", "AIAIAI TMA-2 Modular", "headphones", "250.00"),

    ];
  }


}