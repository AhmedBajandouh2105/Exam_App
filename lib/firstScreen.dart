import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Stack(
              children: [
                Container(
                  color: Colors.redAccent,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  right: -60,
                  child: Container(
                    height: 300,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        "assets/images/pizza.jpg",
                        fit: BoxFit.cover,
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 230,
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Maga Deal",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Get maga pizza here",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 170,
            child: Container(
              padding: EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height - 180,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(top: 8,bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.orange[700],
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: SizedBox(
                      height: 50,
                      width: 350,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Icon(Icons.info_outline,color: Colors.white,),
                        Text("  Compaign Info",style: TextStyle(fontSize: 20,color: Colors.white),),
                        Spacer(),
                        Text("click here",style: TextStyle(color: Colors.white),),
                        Icon(Icons.arrow_right_alt,color: Colors.white,)
                      ],)
                    ),
                  ),
                  SizedBox(
                    height: 514,
                    child: ListView.builder(
                        itemCount: 30,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              height: 120,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              "assets/images/pizza_shop.jpg",
                                              height: 80,
                                              width: 100,
                                              fit: BoxFit.fill,
                                            )),
                                      ),
                                      Positioned(
                                          top: 20,
                                          child: Container(
                                            height: 20,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(4),
                                                    bottomRight:
                                                        Radius.circular(4))),
                                            child: Text(
                                              " New",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )),
                                    ],
                                  ),
                                  Container(
                                    width: 230,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Resturant",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("aasdavavava\ndasdadada"),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange[900],
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange[900],
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange[900],
                                            ),
                                            Icon(
                                              Icons.star_half,
                                              color: Colors.orange[900],
                                            ),
                                            Icon(Icons.star_outline),
                                            SizedBox(width: 5,),
                                            Icon(
                                              Icons.thumb_up_alt_outlined,
                                              color: Colors.grey,
                                            ),
                                            Text("50")
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.orange[800],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    )),
              )),
        ],
      ),
    );
  }
}
