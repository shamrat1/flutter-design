import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Home(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Column(
          children: [
            // top bar
            Container(
              color: Colors.grey.shade100,
              height: 50,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Text("APP Name",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightGreen
                    ),
                  ),
                  Spacer(),
                  IconButton(icon: Icon(Icons.support_outlined),
                      color: Colors.red,
                      onPressed: (){
                    print('support clicked');
                  }),
                  IconButton(icon: Icon(Icons.search),
                      color: Colors.lightGreen,
                      onPressed: (){
                        print('support clicked');
                    }),
                  // SizedBox(width: 10,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            // slider
            CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 5,
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://picsum.photos/1280/600?random=$i",
                            fit: BoxFit.fill,
                          ),
                        )
                    );
                  },
                );
              }).toList(),
            )
            // categories
            // products
          ],
        ),
        ),
      ),
    );
  }
}


