import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/products_data_model/my_products_api.dart';
import 'package:online_shop/products_data_model/product_model.dart';
import 'package:online_shop/views/online_shop_Icon.dart';
import 'package:online_shop/views/shop_real_time.dart';

class ShopPage1 extends StatefulWidget {
  const ShopPage1({Key? key}) : super(key: key);

  @override
  State<ShopPage1> createState() => _ShopPage1State();
}
class _ShopPage1State extends State<ShopPage1> {
  bool changeIcon = true;
  List<ProductModel>? products = [];
  @override
  void initState() {
    getData().then((value) => products = value);
    super.initState();
  }
  Future<List<ProductModel>> getData() async {
    return await MyProductsApi().products.getProductsData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
   backgroundColor: Colors.indigoAccent,
        title: const Text('BIG  STORE',
          style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightBlueAccent,
        child: ListView(
          padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,
            color: Colors.deepPurple,
            ),
              iconSize: 30,
            ),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,
          color: Colors.deepPurple),
            iconSize: 30,
          ),
              IconButton(onPressed: (){}, icon: Icon(Icons.shop,
                  color: Colors.deepPurple),
                iconSize: 30,
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings,
                  color: Colors.deepPurple),
                iconSize: 30,
              ),
        ],
          ),
          ],
        ),
      ),
      body: Column(
        children: [
          StreamBuilderRealTimeClock(),
          Padding(padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                'OnlinE   ShoP',
                 style: GoogleFonts.areYouSerious(
                   color: Colors.deepPurple,
                   fontSize: 40,
                   fontWeight: FontWeight.bold,
                 ),
              ),
              ),
              IconButton(
                  onPressed: (){
                    setState(() {
                      changeIcon = !changeIcon;
                    });
                  },
                  icon: changeIcon ?  Icon(Icons.view_week,
              color: Colors.deepPurpleAccent,)
                : Icon(Icons.view_headline_rounded),
                color: Colors.deepPurpleAccent,
    ),
            ],
          ),
          ),
    Expanded(
     child: changeIcon ? GridView.builder(
       padding: EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2/3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 30),
          itemCount: products!.length,
          itemBuilder: (BuildContext ctx, index) {
         return Expanded(
              child :GestureDetector(
              onTap: () { Navigator.push(context, MaterialPageRoute(
                  builder: (context) => showProduct(products![index])));
                  },
              child: Container(
                padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.indigo,
                      blurRadius: 13,
                      spreadRadius: 3,
                    ),
                  ],
              ),
              child: Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height : 145,
                        child: Image.network(
                          products![index].imageUrl.toString(),)),
                    Text(products![index].productName.toString()),
                    Text(products![index].price.toString()),
                    Text(products![index].materials!.first),
                  ],
                ),
              ),
             ),
              ),
            );
           }

           )       :       ListView.builder(

     padding: EdgeInsets.all(15),
         itemCount: products!.length,
       itemBuilder: ( context, index){
         return Expanded(
           child : GestureDetector(
             onTap: () { Navigator.push(context, MaterialPageRoute(
                 builder: (context) => showProduct(products![index])));
            },
             child: Container(
               margin: EdgeInsets.all(20),
               padding: EdgeInsets.all(15),
               alignment: Alignment.center,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(15),
                 boxShadow: const [
                   BoxShadow(
                     color: Colors.indigo,
                     blurRadius: 13,
                     spreadRadius: 3,
                   ),
                 ],
               ),
               child: Expanded(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     SizedBox(
                         height : 130,
                         child: Image.network(products![index].imageUrl.toString(),)),
                     Text(products![index].productName.toString()),
                     Text(products![index].price.toString()),
                     Text(products![index].materials!.first),
                   ],
                 ),
               ),
             ),
           ),
         );
       }
     ),
          ),
        ],
      ),
    );
  }
   Widget showProduct (ProductModel product)  {
    return  Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.bottomCenter,
        //       end: Alignment.topCenter,
        //       colors: [
        //         Colors.orange,
        //         Colors.blue,
        //         Colors.red,
        //       ],
        //     )
        // ),
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Image.network(product.imageUrl.toString(),
                height: 333,
              ),
            ),
       Text(product.description.toString()),
            IconChange(),
            RatingBar.builder(
              initialRating: 0,
              minRating: 0.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 3),
              itemBuilder: (context, builder) => Icon(
                Icons.star,
                color: Colors.orange,
              ),
              onRatingUpdate: (rating) {
              },
              itemSize: 30,
            ),
            const Spacer(),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Text(r'$ ' '${product.price.toString()}',
               style: const TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.bold,
                 color: Colors.brown,
               ),
               ),
              ElevatedButton(onPressed: () {
                final player = AudioPlayer();
                player.play('assets/audio/note.wav');
              },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo),
                ),
                  child: const Text('REMOVE  CART',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.cyanAccent,
                ),
                  ),
              ),
             ],
           ),
          ],
        ),
      ),
    );
  }
}
