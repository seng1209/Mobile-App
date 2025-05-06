import 'package:flutter/material.dart';

class UserPageScreen extends StatelessWidget {
  const UserPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  onPressed: (){},
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
            height: 24,
          ),
          Text("Account", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          ElevatedButton(
              onPressed: (){},
              child: Row(
                children: [
                  Icon(Icons.list),
                  Text("Order")
                ],
              ),
          ),
          Divider(),
          ElevatedButton(
            onPressed: (){},
            child: Row(
              children: [
                Icon(Icons.notifications),
                Text("Notification")
              ],
            ),
          ),
          Divider(),
          ElevatedButton(
            onPressed: (){},
            child: Row(
              children: [
                Icon(Icons.location_city),
                Text("Address")
              ],
            ),
          ),
          Divider(),ElevatedButton(
            onPressed: (){},
            child: Row(
              children: [
                Icon(Icons.credit_card),
                Text("Payment")
              ],
            ),
          ),
          Divider(),ElevatedButton(
            onPressed: (){},
            child: Row(
              children: [
                Icon(Icons.settings),
                Text("Setting")
              ],
            ),
          ),
          Divider(),ElevatedButton(
            onPressed: (){},
            child: Row(
              children: [
                Icon(Icons.question_mark),
                Text("FAQ")
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
