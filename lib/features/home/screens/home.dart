import 'package:amazon/constants.dart';
import 'package:amazon/providers/user_provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const String routeName = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: appBarGradient),
        ),
        actions: [
          Container(
              padding: const EdgeInsets.only(right: 50),
              child: const Icon(Icons.mic)),
        ],
        title: Container(
          height: 40,
          width: 320,
          padding: const EdgeInsets.only(left: 20),
          child: TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide.none),
                contentPadding: EdgeInsets.all(8)),
          ),
        ),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.location_on_outlined),
            title: Text(
              'Delivery to ${user.name} - ${user.address} eqfboiwef wefionwefwoebinfwf ',
              style: const TextStyle(overflow: TextOverflow.ellipsis),
            ),
            tileColor: const Color.fromARGB(255, 125, 221, 216),
            minTileHeight: 12,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/appliances.jpeg'),
                Image.asset('assets/images/electronics.jpeg'),
                Image.asset('assets/images/appliances.jpeg'),
                Image.asset('assets/images/electronics.jpeg'),
                Image.asset('assets/images/appliances.jpeg'),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CarouselSlider(
            items: carouselImages
                .map(
                  (e) => Image.network(
                    e,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(viewportFraction: 0.93),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(22),
            child: const Text(
              'Deal of the day',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 230,
            width: double.infinity,
            child: Image.asset(
              'assets/images/IMG_2835.JPG',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              '\$999',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              'Jermaines Dreamer edition basketball shirt',
              style: TextStyle(fontSize: 15),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/IMG_2835.JPG',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/IMG_2835.JPG',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/IMG_2835.JPG',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/IMG_2835.JPG',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/IMG_2835.JPG',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/IMG_2835.JPG',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'See all deals',
              style: TextStyle(fontSize: 15, color: Colors.cyan[800]),
            ),
          ),
        ],
      ),
    );
  }
}
