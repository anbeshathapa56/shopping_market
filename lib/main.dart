import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopping_market/model/Product_list.dart';
import 'package:shopping_market/screens/product_details_screen.dart';
import 'package:shopping_market/screens/product_overview.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ProductList(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop Venue',
        theme: ThemeData(
            primaryColor: Colors.greenAccent,
            // ignore: deprecated_member_use
            accentColor: Colors.red,
            fontFamily: GoogleFonts.lato().fontFamily),
        initialRoute: "/",
        routes: {
          "/": (ctx) => const ProductOverview(),
          ProductDetail.routeName: (ctx) => const ProductDetail(),
        },
      ),
    );
  }
}
