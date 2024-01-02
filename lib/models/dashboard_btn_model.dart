import 'package:flutter/cupertino.dart';
import 'package:shopsmart_admin/screens/inner_screens/orders/orders_screen.dart';
import 'package:shopsmart_admin/screens/search_screen.dart';

import '../screens/edite_upload_product_form.dart';
import '../services/assets_manager.dart';

class DashboardButtonModel {
  String title, imagePath;
  final Function onPressed;

  DashboardButtonModel({
    required this.title,
    required this.imagePath,
    required this.onPressed,
  });

  static List<DashboardButtonModel> dashboardBtnList(BuildContext context) => [
        DashboardButtonModel(
          title: "Add a new product",
          imagePath: AssetsManager.cloud,
          onPressed: () {
            Navigator.pushNamed(context, EditOrUploadProductScreen.routeName);
          },
        ),
        DashboardButtonModel(
          title: "inspect all products",
          imagePath: AssetsManager.shoppingCart,
          onPressed: () {
            Navigator.pushNamed(context, SearchScreen.routeName);
          },
        ),
        DashboardButtonModel(
          title: "View orders",
          imagePath: AssetsManager.order,
          onPressed: () {
            Navigator.pushNamed(context, OrdersScreenFree.routeName);
          },
        ),
      ];
}
