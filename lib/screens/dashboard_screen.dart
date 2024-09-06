import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopsmart_admin/widgets/dasboard_btn.dart';
import '../models/dashboard_btn_model.dart';
import '/widgets/title_text.dart';
import '../providers/theme_provider.dart';
import '../services/assets_manager.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = '/DashboardScreen';

  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const TitlesTextWidget(label: "Dashboard Screen"),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
        actions: [
          IconButton(
            onPressed: () {
              themeProvider.setDarkTheme(
                themeValue: !themeProvider.getIsDarkTheme,
              );
            },
            icon: Icon(
              themeProvider.getIsDarkTheme ? Icons.light_mode : Icons.dark_mode,
            ),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        children: List.generate(3, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: DashboardButtonWidget(
              title:
                  DashboardButtonModel.dashboardBtnList(context)[index].title,
              imagePath: DashboardButtonModel.dashboardBtnList(context)[index]
                  .imagePath,
              onPressed: () {
                DashboardButtonModel.dashboardBtnList(context)[index]
                    .onPressed();
              },
            ),
          );
        }),
      ),
    );
  }
}
