import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_blog/model/travel.dart';
class MostPopular extends StatelessWidget {
 final _list = Travel.mostPopular();
 final _pgcontroller = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      controller: _pgcontroller,
      scrollDirection: Axis.horizontal,
      itemCount: _list.length,
      itemBuilder: (context,index){

        var travel = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:8.0,left: 10,bottom: 2,right: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(travel.url,
                fit: BoxFit.cover,
                width: 130,),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(travel.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  ),
                  Text(travel.name,
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 15
                  ),
                  ),
                ],
              ),
            )
          ],
        );
      },
      separatorBuilder: (_,index)=>SizedBox(width:10),
        );
  }
}
