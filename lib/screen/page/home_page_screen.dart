import 'package:e_commerce/screen/page/product_detail_page_screen.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_network/image_network.dart';
import 'package:flutter_cart/flutter_cart.dart';
import 'package:e_commerce/components/global_variable.dart' as basedApi;

class HomePageScreen extends StatefulWidget {
  HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<Map<String, dynamic>> _categories = [];
  List<Map<String, dynamic>> _brands = [];
  List<Map<String, dynamic>> _products = [];

  void cart() async {
    var cart = FlutterCart();
    await cart.initializeCart(isPersistenceSupportEnabled: true);
  }

  void addToCart(Map<String, dynamic> product){

  }


  @override
  void initState() {
    super.initState();
    _fetchProducts();
    _fetchCategories();
  }

  Future<void> _fetchCategories() async {
    try{
      final response = await http.get(Uri.parse( basedApi.BASE_ENDPOINT + "/categories"));
      if(response.statusCode == 200){
        setState(() {
          _categories = List<Map<String, dynamic>>.from(jsonDecode(response.body)['data']);
        });
      }
    }catch(e){
      print(e.toString());
    }
  }

  Future<void> _fetchProducts() async {
    try {
      final response = await http.get(
        Uri.parse(basedApi.BASE_ENDPOINT + "/products"),
      );
      if (response.statusCode == 200) {
        setState(() {
          _products = List<Map<String, dynamic>>.from(
            jsonDecode(response.body)['data'],
          );
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      print(error);
    }
  }

  List<Map<String, dynamic>> slideShows = [
    {
      "image":
          "https://media.gettyimages.com/id/1352736851/video/4k-timelapse-of-an-sweet-cherry-tree-flower-blossom-bloom-and-grow-and-rotating-on-a-blue.jpg?s=640x640&k=20&c=mU6XAshTPAsrRLDHIqs7cZBZuP7RrTM4xMzjst6vrhM=",
      "title": "Page1",
      "sub_title": "Page1",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScQOHo4ytt1SM6NKOQd7QDQhdiHgDpLCePSA&s",
      "title": "Page2",
      "sub_title": "Page2",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7xGKr1oGfW09GMbbVPa1lXWOATN2B_AJ_iQ&s",
      "title": "Page3",
      "sub_title": "Page3",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOMDoX5yrvuoL3rmYRMiMrGADKROHJx8w0bg&s",
      "title": "Page4",
      "sub_title": "Page4",
    },
    {
      "image":
          "https://lp-cms-production.imgix.net/2024-05/LPT0515083-16.9.jpg?auto=format,compress&q=72&w=1440&h=810&fit=crop",
      "title": "Page5",
      "sub_title": "Page5",
    },
  ];

  var categories = [
    "All",
    "Smart Watch",
    "Power Bank",
    "Head Phone",
    "Pad Phone",
    "Adapter & Cable",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: PageView.builder(
                itemCount: slideShows.length,
                itemBuilder: (context, index) {
                  final slide = slideShows[index];
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      Image(
                        image: NetworkImage(slide['image']),
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        left: 20,
                        top: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              slide['title'],
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              slide['sub_title'],
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Row(
                          children: [
                            for (int i = 0; i < slideShows.length; i++)
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 20,
                                height: 10,
                                decoration: BoxDecoration(
                                  color:
                                      index == i ? Colors.blue : Colors.white24,
                                  shape:
                                      index == i
                                          ? BoxShape.rectangle
                                          : BoxShape.circle,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 24),
            Text("Categories", style: TextStyle(fontSize: 24)),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.04
                        : MediaQuery.of(context).size.height * 0.08,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    final category = _categories[index];
                    return Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          category['category'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                index == 0 ? Colors.blue[400] : Colors.black87,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffFFDEDE),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Popular Products",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:
                        MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.height * 0.3
                            : MediaQuery.of(context).size.height * 0.65,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _products.length,
                      itemBuilder: (context, index) {
                        final product = _products[index];
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPageScreen(product: product)));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 9),
                            width: 160,
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                ImageNetwork(
                                  image: "${product['image']}",
                                  fitAndroidIos: BoxFit.cover,
                                  fitWeb: BoxFitWeb.cover,
                                  height: 150,
                                  width: 150,
                                ),
                                SizedBox(height: 10),
                                Flexible(
                                    child: Text("${product["product_name"]}", overflow: TextOverflow.ellipsis,)
                                ),
                                SizedBox(height: 10),
                                Text("\$${product["price"]}"),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "All products",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:
                        MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.height * 0.3
                            : MediaQuery.of(context).size.height * 0.65,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _products.length,
                      itemBuilder: (context, index) {
                        final product = _products[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => ProductDetailPageScreen(
                                      product: product,
                                    ),
                              ),
                            );
                          },
                          child: Container(
                            width: 160,
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                ImageNetwork(
                                    image: "${product['image']}",
                                    height: 150,
                                    width: 150
                                ),
                                SizedBox(height: 10),
                                Flexible(
                                    child: Text("${product["product_name"]}", overflow: TextOverflow.ellipsis,)
                                ),
                                SizedBox(height: 10),
                                Text("\$${product["price"]}"),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
