import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_shopping/Utls/text.dart';
import 'Model/product.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
        actions: [
         Center(
           child: Badge(
             badgeContent: Text('0'),
             animationDuration: Duration(microseconds: 1500),
             child: Icon(Icons.shopping_bag_outlined),
           ),
         ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: productImage.length,
                  itemBuilder: (covariant,index){
               return Card(
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisSize: MainAxisSize.max,
                       children: <Widget>[
                         Image(
                           height: 100.0,
                           width: 100.0,
                           image: NetworkImage(productImage[index].toString()),
                         ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(productName[index].toString(),style: subtitle,),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(productUnit[index].toString()+" "+r"$"+productPrice[index].toString(),style: body,),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 100,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(child: Text('Add cart')),
                                ),
                              ),
                            ],
                          ),
                        ),
                       ],
                     )
                   ],
                 ),
               );
              }
              ),
          ),
        ],
      ),
    );
  }
}
