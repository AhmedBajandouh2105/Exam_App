import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget{
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: Image.asset("assets/images/pizza_shop.jpg")),
        Positioned(
            top: 180,
            child: Container(
              padding: EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/pizza_shop.jpg",
                        height: 80,
                        width: 100,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        width: 250,
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Resturnt",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                            ),
                            Text(
                              "Yemeni Resturant fast food",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        child: Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.orange[900],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text.rich(
                      TextSpan(text: "daily time:",
                          children: [
                            TextSpan(text: " 9:30 am to 11:00 pm",style: TextStyle(color: Colors.deepOrange))
                          ]
                      )
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange[900],
                      ),
                      Text.rich(TextSpan(
                          text: "4.9",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),children: [
                        TextSpan(text: " 200+ Ratings",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12))
                      ]
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.orange[900],
                      ),
                      Text("location"),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8,bottom: 8,right: 4,left: 4),
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("30% OFF",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("Enjoy 30% off on all categories",style: TextStyle(color: Colors.white),)
                    ],),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                  _tabSection(context)
                ],
              ),
            )),
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(leading: Icon(Icons.arrow_back_ios_new),backgroundColor: Colors.transparent,elevation: 0,))
      ]),
    );
  }
  Widget _tabSection(BuildContext ctx){
    return DefaultTabController(length: 6,child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: TabBar(
              isScrollable: true,
              labelColor: Colors.deepOrange,
              indicatorColor: Colors.deepOrange,
              tabs: [
                Tab(text: "Offer"),
                Tab(text: "Burgers"),
                Tab(text: "Pizza"),
                Tab(text: "Meats"),
                Tab(text: "Chicken"),
                Tab(text: "Brosted")
              ]),
        ),
        Container(
          height:400,
          child: TabBarView(
              children: [
                Container(child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (ctx,index){
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/images/fast_food.jpg",height: 80,width: 120,),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("ItemName",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("discription\nmore discription"),
                                      Text.rich(
                                          TextSpan(text: "\$5.55  ",style: TextStyle(fontWeight: FontWeight.bold),children: [
                                            TextSpan(text: "\$7.00",style: TextStyle(fontWeight: FontWeight.normal,decoration: TextDecoration.lineThrough,fontSize: 12,color: Colors.grey))
                                          ])),
                                    ],),
                                ),
                              ),
                              Container(
                                height: 70,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.favorite_border),
                                    Icon(Icons.add)
                                  ],),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                )),
                Container(child: Center(child: Text("Burgers"))),
                Container(child: Center(child: Text("Pizza"))),
                Container(child: Center(child: Text("Meats"))),
                Container(child: Center(child: Text("Chicken"))),
                Container(child: Center(child: Text("Brosted"))),

              ]),
        )
      ],
    ));
  }
}