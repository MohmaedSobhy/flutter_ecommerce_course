import 'favorite_product.dart';
import 'purchase_table.dart';

class ProductModel {
  String? productId;
  DateTime? createdAt;
  String? productName;
  String? price;
  String? oldPrice;
  String? sale;
  String? description;
  String? category;
  String? imageUrl;
  List<FavoriteProduct>? favoriteProducts;
  List<PurchaseTable>? purchaseTable;

  ProductModel({
    this.productId,
    this.createdAt,
    this.productName,
    this.price,
    this.oldPrice,
    this.sale,
    this.description,
    this.category,
    this.imageUrl,
    this.favoriteProducts,
    this.purchaseTable,
  });
}
