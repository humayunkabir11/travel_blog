import 'package:flutter/material.dart';
import 'package:travel_blog/model/travel.dart';
class TravelBlog extends StatelessWidget {

  final _list = Travel.generateTravelBlog();
  final _pgcontroler = PageController(viewportFraction: 0.95);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pgcontroler,
     physics: BouncingScrollPhysics(),
      itemCount: _list.length,
      itemBuilder: (context,index){
        var travel = _list[index];

        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0,bottom: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(travel.url,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),

            Positioned(
              right: 100,
              bottom: 0,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.arrow_forward,
                color: Colors.white,),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 15,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(travel.name,
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 30
                      ),
                    ),
                    Text(travel.location,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
