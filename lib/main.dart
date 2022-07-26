import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/product_list.dart';
import 'pages/counter_page.dart';
import 'pages/product_detail_page.dart';
import 'pages/products_overview_page.dart';
import 'utils/app_routes.dart';
import 'providers/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          secondaryHeaderColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewPage(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage(),
        },
      ),
    );
  }
}
