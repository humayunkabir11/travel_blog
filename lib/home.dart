import 'package:flutter/material.dart';
import 'package:travel_blog/most_popular.dart';
import 'package:travel_blog/widgets/travel_blog.dart';
class HomePagee extends StatelessWidget {
  const HomePagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.menu,
              color: Colors.black,
            ),
          ),

        ],
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(

            padding: const EdgeInsets.only( left: 15.0,bottom: 20),
            child: Text('Travel Blog',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
            child: TravelBlog(),
            flex: 2,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Most popular',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),

                //  CircleAvatar(
                //   child: Icon(
                //     Icons.arrow_forward_outlined,
                //     size: 20,
                //   ),
                //   backgroundColor: Colors.redAccent,
                // ),
                Text('Viem All',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MostPopular(),
            flex: 1,
          ),

        ],
      ),
    );
  }
}


