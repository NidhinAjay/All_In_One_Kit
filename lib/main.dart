import 'package:flutter/material.dart';

void main() {
  runApp(const listgrid());
}
class listgrid extends StatefulWidget {
  const listgrid({Key? key}) : super(key: key);

  @override
  State<listgrid> createState() => _listgridState();
}

class _listgridState extends State<listgrid> {

  List c = [1, 2, 3, 4];
  List m = [
    Icons.crop,
    Icons.person,
    Icons.fastfood,
    Icons.sports_gymnastics,
    Icons.account_balance_wallet_outlined
  ];
  List c1 = ["File Manager", "Exercise Tips", "Food Recipe", "Gym","E-Wallet"];
  List c2 = ["Screens 1", "Screens 2", "Screens 3", "Screens 4","Screens 5"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "All In One Kit",
              style: TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.w800),
            ),
          ),
          actions: [Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
            Icons.toggle_off_outlined,color: Colors.black,size: 35,),
          )],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridView.count(childAspectRatio: 3/2,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  children: [
                    Card(
                      elevation: 4,
                      color: Colors.blueGrey,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone_android_sharp,color: Colors.white,size: 40),
                          SizedBox(height: 8,),
                          Text(
                            "Default Theme",
                            style: TextStyle(
                                color: Colors.white, fontSize: 22,),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 4,
                      color: Colors.brown,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.apple_outlined,color: Colors.white,size: 40),
                          SizedBox(height: 8,),
                          Text(
                            "Full Apps",
                            style: TextStyle(
                              color: Colors.white, fontSize: 22,),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 4,
                      color: Colors.cyan,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.blur_circular_outlined,color: Colors.white,size: 40),
                          SizedBox(height: 8,),
                          Text(
                            "Integration",
                            style: TextStyle(
                              color: Colors.white, fontSize: 22,),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 4,
                      color: Colors.deepOrangeAccent,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.dashboard,color: Colors.white,size: 40),
                          SizedBox(height: 8,),
                          Text(
                            "Dashboard",
                            style: TextStyle(
                              color: Colors.white, fontSize: 22,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                Text(
                  "Themes",
                  style: TextStyle(
                    color: Colors.black, fontSize: 24,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12,),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: c.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      child: Container(
                        height: 100,
                        width: double.maxFinite,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.grey),
                                height: double.maxFinite,
                                width: 120,
                                child:Icon(m[index],size: 30),
                              ),
                              SizedBox(width: 15,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${c1[index]}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),

                                  Text(
                                    "${c2[index]}",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
