import 'package:flutter/material.dart';
import 'package:flutter_shopping/Provider/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_shopping/product_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => CardProvider(),
      child: Builder(builder :(BuildContext context){
      return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductList(),
      );
      }
      ),
    );
  }
}
