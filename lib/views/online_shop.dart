// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/products_data_model/my_products_api.dart';
import 'package:online_shop/products_data_model/product_model.dart';


class ShopPage1 extends StatefulWidget {
  const ShopPage1({Key? key}) : super(key: key);

  @override
  State<ShopPage1> createState() => _ShopPage1State();
}
class _ShopPage1State extends State<ShopPage1> {
  bool changeIcon = true;
  bool changeMyIcon = true;

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
        title: Text('BIG  STORE',
          style: TextStyle(
          color: Colors.indigo[800],
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
          Padding(padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                'Online Shop',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
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
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 4/6,
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
                  boxShadow: [
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
                        child: Image.network(products![index].imageUrl.toString(),)),
                    Text(products![index].productName.toString()),
                    Text(products![index].price.toString()),
                        Text(products![index].materials.toString()),
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
           child :GestureDetector(
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
                 boxShadow: [
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
                     Text(products![index].materials.toString()),
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
  Widget showProduct (ProductModel product){
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Center(
              child: Image.network(product.imageUrl.toString(),
                height: 300,
              ),
            ),
       Text(product.description.toString()),
            IconButton(
              onPressed: (){
                setState(() {
                  changeMyIcon = !changeMyIcon;
                });
              },
              icon: changeMyIcon ?  Icon(Icons.favorite_border,
                color: Colors.deepPurpleAccent,)
                  : Icon(Icons.favorite),
              color: Colors.deepPurpleAccent,
            ),
            const Spacer(),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Text(r'$  ' '${product.price.toString()}',
               style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.bold,
                 color: Colors.brown,
               ),
               ),
              ElevatedButton(onPressed: () {
                // final player = AudioCache();
                // player.play('assets/audio/note.wav');
              },
                  child: Text('Remove Card',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.cyanAccent,
                ),
                  ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo),
                ),
              ),
             ],
           )
          ],
        ),
      )
    );
  }
}
