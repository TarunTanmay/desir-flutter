

class IconsHelper{
  static var icons = CustomIcons();
}


class CustomIcons{
  final _path = "assets/images/";
  String cart = "shopping-cart.png";
  String shoppingCover = "shopping.png";
  String tshirt = "mens.png";
  String womenTshirt = "woman.png";
  String shoes = "shoes.png";
  String kids = "kids.png";
  String beauty = "beauty.png";
  String mensDummyTshirt = "mensTshirts.png";
  String cover = "shopping_cover.jpeg";
  String model = "shopping_model.jpeg";
  String womenSuit = "womens_suit.png";
  String mensSuit = "mens_suit.jpg";
  String next = "next.png";

  String getImageFromPath(String image){
    return _path+image;
  }
}