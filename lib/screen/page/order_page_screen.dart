import 'package:e_commerce/screen/page/user_page_screen.dart';
import 'package:flutter/material.dart';

import '../auth/login_auth_screen.dart';

class OrderPageScreen extends StatelessWidget {
  const OrderPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image(
                      image: NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQArgMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAAAgMEAQUH/8QAKhABAQABAgUEAQMFAAAAAAAAAAECAxEEITFBURIiMnFhUoGRExQzQrH/xAAVAQEBAAAAAAAAAAAAAAAAAAAAAf/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/APuIAAAAAAAAAAAAAAAAAAAAAAAAAAADlyk61DLU/T/KsE7qXtEfXb3cAd3vlze+aAJTPKd0pqeVYC+XfpXWeWzouwyl5dwSAAAAAAAAAAVamW92nRLUy2nLqqAAABy2Sb5WSeaDoqvEac72/Udx19PK7b7fYLAAAAW4Zbzn1TZ5drvF8u83gOgAAAAAAjndsaCrK75VwAAAR1M5hjbWHUzud3yv7LuLy90x7bM4ACot0Na6eUl54/8AG2Xebzo81t4bLfSn4uyKtAAT0rz2Qdxu1lBeOR0AAAABDU+KaGr8QVAAAAx8X/l/ZS08Xj0z/GzMoACDXwnws/LI28Nj6dKebzFWgIAAL8ekdRw+MSAAAAAR1J7ak5ZvLAUBZsAAA5ljMsbjl0rFq6WWnec9vlttmPysn3UP62n0ueIMI128Pevpdxy0MeeNxlBXoaFt9Wc2k7eWpCa2nemeO/2nLvznTyAAAdRLCb5AtnR0AAAAAAAVak2u/lBfZvNlNx2uwOM+vr+m+nC+7vVmvn6NK2dbyjCDttt3t3v5cBUAAEsM8sL7bYiA26OrNSeMp1i15+GVxzmU7N8ss3nRFdW6eO2PPrUMMd7z6LgAAAAAAAAEcsfVEgGDjpZ6YyPYz08dTG45TeVh1uDzx56funjuDKO2WXayy+LHFQAABLDDLUu2GNtBHo9DhZ6tHGo6PBbc9Xa/iNcknRFJNnQAAAAAAAAAAAABHPDHP5Yy/cU5cHpZdrPqtADHeBw/Xl/Dv9jh3yyrWAow4XSx/wBd/tdJJNpJJ4dAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAf/2Q=="),
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("HI! Him SengHong"),
                      Text("him.senghong.1221@rupp.edu.kh"),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginAuthScreen()));
                      },
                      child: Column(
                        children: [
                          Icon(Icons.logout),
                          Text("Logout"),
                        ],
                      )
                  ),
                ],
              ),
              SizedBox(
                height: 64,
                child: Row(
                  children: [
                    Text("Order", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                    Spacer(),
                    IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => UserPageScreen()));
                        },
                        icon: Icon(Icons.arrow_back),
                    ),
                    // Icon(Icons.arrow_back),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Order no. #abc123456789",
                              style: TextStyle(fontSize: 16)),
                          SizedBox(height: 4),
                          Text("Purchased on 12 Jan 2025",
                              style: TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    OrderItem(
                      image: 'assets/images/intro/intro1.jpg', // Replace with your local asset
                      title: "Lily",
                      productName: "Product1",
                      price: "\$35",
                    ),
                    const SizedBox(height: 12),
                    OrderItem(
                      image: 'assets/images/intro/intro1.jpg',
                      title: "Lily",
                      productName: "Product2",
                      price: "\$38",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Order no. #abc123456789",
                              style: TextStyle(fontSize: 16)),
                          SizedBox(height: 4),
                          Text("Purchased on 12 Jan 2025",
                              style: TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    OrderItem(
                      image: 'assets/images/intro/intro1.jpg', // Replace with your local asset
                      title: "Lily",
                      productName: "Product1",
                      price: "\$35",
                    ),
                    const SizedBox(height: 12),
                    OrderItem(
                      image: 'assets/images/intro/intro1.jpg',
                      title: "Lily",
                      productName: "Product2",
                      price: "\$38",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String image;
  final String title;
  final String productName;
  final String price;

  const OrderItem({
    super.key,
    required this.image,
    required this.title,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 14, color: Colors.grey, height: 1.4)),
                Text(productName,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.4)),
                Text(price,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        height: 1.4)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}