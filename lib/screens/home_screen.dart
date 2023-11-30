import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: Colors.white,
              ),
              Text(
                "Simple Home Screen",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // Elemanlar arasında eşit boşluk bırakır

                  children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Lorem Ipsum",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(10.0), // Kenar yuvarlaklığı
                  child: Image.network(
                    "https://i.hizliresim.com/se4krnh.jpeg",
                    width: 400,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Featured",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 0, bottom: 10, right: 0, top: 0),
                  child: SearchBar(
                    constraints: BoxConstraints(minHeight: 50.0),
                    leading: Icon(Icons.search),
                    hintText: "Search",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10.0), // Kenar yuvarlaklığı
                      child: Image.network(
                        "https://i.hizliresim.com/2cy5zpq.jpeg",
                        width: 160,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10.0), // Kenar yuvarlaklığı
                      child: Image.network(
                        "https://i.hizliresim.com/se4krnh.jpeg",
                        width: 160,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10.0), // Kenar yuvarlaklığı
                      child: Image.network(
                        "https://i.hizliresim.com/se4krnh.jpeg",
                        width: 160,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10.0), // Kenar yuvarlaklığı
                      child: Image.network(
                        "https://i.hizliresim.com/2cy5zpq.jpeg",
                        width: 160,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ])),
        ),
        bottomNavigationBar: const BottomAppBar(
          height: 68,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                Icon(
                  Icons.home,
                ),
                Text("Home")
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.explore,
                ),
                Text("Explore")
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.chat,
                ),
                Text("Chat")
              ],
            )
          ]),
        ));
  }
}

