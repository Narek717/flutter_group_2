import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/online_shop/online_shop_big/shop_tools/online_shop_Icon.dart';
import 'package:online_shop/online_shop/online_shop_big/shop_tools/settings.dart';
import 'package:online_shop/online_shop/online_shop_big/shop_tools/shop_real_time.dart';
import 'package:online_shop/online_shop/online_shop_data_model/my_products_api.dart';
import 'package:online_shop/online_shop/online_shop_data_model/product_model.dart';

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
        title: const Text(
          'BIG  STORE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(70, 102, 102, 255),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart,
                        color: Colors.lightBlueAccent),
                    iconSize: 30),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shop, color: Colors.lightBlueAccent),
                    iconSize: 30),
                IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.search, color: Colors.lightBlueAccent),
                    iconSize: 30),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Settings(),
                      ),
                    );
                  },
                  icon:
                      const Icon(Icons.settings, color: Colors.lightBlueAccent),
                  iconSize: 30,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            const StreamBuilderRealTimeClock(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'OnlinE  ShoP',
                      style: GoogleFonts.akayaKanadaka(
                        color: Colors.deepPurple,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        changeIcon = !changeIcon;
                      });
                    },
                    icon: changeIcon
                        ? const Icon(
                            Icons.view_week,
                            color: Colors.deepPurpleAccent,
                          )
                        : const Icon(Icons.view_headline_rounded),
                    color: Colors.deepPurpleAccent,
                  ),
                ],
              ),
            ),
            Expanded(
              child: changeIcon
                  ? GridView.builder(
                      padding: const EdgeInsets.all(15),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 5,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 30),
                      itemCount: products!.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        showProduct(products![index])),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(15),
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
                                      height: 155,
                                      child: Image.network(
                                          products![index].imageUrl.toString()),
                                    ),
                                    Text(
                                      products![index].productName.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue[900],
                                          fontSize: 20),
                                    ),
                                    Text(
                                        r'$'
                                        ' '
                                        '${products![index].price.toString()}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue[800],
                                            fontSize: 17)),
                                    Text(products![index].materials!.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue[700],
                                            fontSize: 17)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      })
                  : ListView.builder(
                      padding: const EdgeInsets.all(5),
                      itemCount: products!.length,
                      itemBuilder: (context, index) {
                        return Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        showProduct(products![index])),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.all(15),
                              padding: const EdgeInsets.all(20),
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 105,
                                      child: Image.network(
                                        products![index].imageUrl.toString(),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          products![index]
                                              .productName
                                              .toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue[900],
                                              fontSize: 25),
                                        ),
                                        Text(
                                            r'$'
                                            ' '
                                            '${products![index].price.toString()}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue[800],
                                                fontSize: 20)),
                                        Text(
                                            products![index]
                                                .materials!
                                                .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue[700],
                                                fontSize: 20)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
            ),
          ],
        ),
      ),
    );
  }

  Widget showProduct(ProductModel product) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // decoration: const BoxDecoration(
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
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Image.network(
                product.imageUrl.toString(),
                height: 333,
              ),
            ),
            Text(product.description.toString()),
            const IconChange(),
            RatingBar.builder(
              initialRating: 0,
              minRating: 0.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 3),
              itemBuilder: (context, builder) => const Icon(
                Icons.star,
                color: Colors.orange,
              ),
              onRatingUpdate: (rating) {},
              itemSize: 30,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  r'$ ' '${product.price.toString()}',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play('assets/audio/note.wav');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo),
                  ),
                  child: const Text(
                    'REMOVE  CART',
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
