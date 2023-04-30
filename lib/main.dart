import 'package:flutter/material.dart';
import 'package:grocery_app/data.dart';
import 'package:grocery_app/item_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text(
          "Grocery App",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.black,
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                    color: Colors.black,
                  ),
                  Positioned(
                      top: 0,
                      right: 3,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: const Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ))
                ],
              )
            ],
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child:
            // GridView.builder(
            //   itemCount: allData.length,
            //   gridDelegate: SliverWovenGridDelegate.count(
            //       mainAxisSpacing: 20,
            //       crossAxisSpacing: 10,
            //       pattern: [
            //         const WovenGridTile(4 / 7),
            //         const WovenGridTile(5 / 8,
            //             crossAxisRatio: 1,
            //             alignment: AlignmentDirectional.centerEnd),
            //       ],
            //       crossAxisCount: 2),
            //   itemBuilder: (BuildContext context, int index) {
            //     return ItemWidget(
            //       product: allData[index],
            //     );
            //   },
            // )
            GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: 0.6),
          itemBuilder: (context, index) {
            return ItemWidget(
              product: allData[index],
            );
          },
          itemCount: allData.length,
        ),
      ),
    );
  }
}
