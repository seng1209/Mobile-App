import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class ProductDetailPageScreen extends StatelessWidget {
  ProductDetailPageScreen({super.key, required this.product});

  final Map<String, dynamic> product;

  @override
  Widget build(BuildContext context) {
    // print(product);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: ImageNetwork(
                    image: product['image'],
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text("${product["category"]["category"]} | ${product["brand"]["brand"]}"),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${product['product_name']}",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    maxLines: null,
                  ),
                  Text("\$${product['price']}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                ],
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text("Add to Cart", style: TextStyle(color: Colors.white70, fontSize: 18),),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green),),
              ),
              SizedBox(
                height: 12,
              ),
              Text("Description"),
              Text("${product['description']}"),
              Column(
                children: [
                  Row(
                    children: [
                      Text("All products", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.height * 0.25 : MediaQuery.of(context).size.height * 0.55,
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: products.length,
                  //     itemBuilder: (context, index) {
                  //       final product = products[index];
                  //       return GestureDetector(
                  //         onTap: (){
                  //           Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPageScreen(product: product)));
                  //         },
                  //         child: Container(
                  //           width: 160,
                  //           margin: EdgeInsets.only(right: 16),
                  //           decoration: BoxDecoration(
                  //             color: Colors.grey[200],
                  //             borderRadius: BorderRadius.circular(16),
                  //           ),
                  //           child: Column(
                  //             // crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               SizedBox(
                  //                 height: 10,
                  //               ),
                  //               Image(
                  //                 image: NetworkImage("${product['image']}"),
                  //                 fit: BoxFit.cover,
                  //               ),
                  //               SizedBox(
                  //                 height: 10,
                  //               ),
                  //               Text("${product["name"]}"),
                  //               SizedBox(
                  //                 height: 10,
                  //               ),
                  //               Text("\$${product["price"]}"),
                  //             ],
                  //           ),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
