import 'package:e_commerce/screen/auth/login_auth_screen.dart';
import 'package:e_commerce/screen/page/user_page_screen.dart';
import 'package:flutter/material.dart';

class NotificationPageScreen extends StatelessWidget {
  NotificationPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
                  Text("Notification", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
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
            Image.asset("images/Rectangle18.png", fit: BoxFit.cover, height: MediaQuery.of(context).size.width * 0.8,),
            SizedBox(
              height: 12,
            ),
            Text("Turn on Notification?", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 12,
            ),
            Text("Click on to get notification sent.", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 12,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextButton(
                  onPressed: (){},
                  child: Text("Enable Notification", style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
