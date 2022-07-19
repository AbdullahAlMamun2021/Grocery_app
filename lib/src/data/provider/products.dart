import 'package:e_commerce/src/data/model/product.dart';

class Products {
  List<Product> loadedProduct = [
    Product(
        pId: 1,
        pTittle: "Kishmish",
        pWeight: 1000,
        price: 450.0,
        imgUrl: "https://gaappu.com/wp-content/uploads/2021/03/kishmish.jpg",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
    Product(
        pId: 2,
        pTittle: "Cashew Nut",
        pWeight: 1000,
        price: 850.0,
        imgUrl:
            "https://img.favpng.com/4/13/11/cashew-dried-fruit-nut-png-favpng-mBiLPbtzpecKHm6crn6Y7JZd4.jpg",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
    Product(
        pId: 3,
        pTittle: "Almonds",
        pWeight: 500,
        price: 600.0,
        imgUrl:
            "https://chaldn.com/_mpimage/almonds-kath-badam-100-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D47957&q=best&v=1&m=400",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
    Product(
        pId: 4,
        pTittle: "Pistachio Nut",
        pWeight: 500,
        price: 720.0,
        imgUrl:
            "https://static5.depositphotos.com/1020804/534/i/950/depositphotos_5347634-stock-photo-pistachio-nuts.jpg",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
    Product(
        pId: 5,
        pTittle: "Ajwa Dates",
        pWeight: 1000,
        price: 1200.0,
        imgUrl:
            "https://i.pinimg.com/736x/11/12/61/1112618e066bd0cc33c234345be0b6bf.jpg",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
    Product(
        pId: 6,
        pTittle: "Mixed Dry Fruits",
        pWeight: 350,
        price: 700.0,
        imgUrl: "https://shodai-bd.com/uploads/product_image/product_485_1.jpg",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
  ];

  List<Product> get items {
    return [...loadedProduct];
  }

  Product findById(String id) {
    return loadedProduct.firstWhere((prod) => prod.pId == id);
  }
}
