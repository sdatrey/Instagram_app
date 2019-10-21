import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/posts.dart';
class Stories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(delegate: SliverChildListDelegate(
          [
            Container(
              margin: EdgeInsets.fromLTRB(3.0, 4.0, 29.0, 0.0),
              height: 80.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) => Stack(
                alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                        width: 65.0,
                        height: 65.0,
                        margin: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 0.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                              image: AssetImage("asset/image/IMG_20170228_205809_570.jpg")
                          )
                        ),
                      )
                    ],
              )
              )

            )
          ]
        ),
        ),
        SliverList
          (delegate: SliverChildBuilderDelegate(( BuildContext context, int index){
            return Posts();
        },
          childCount: 5,
        ),
        ),
      ],

        
      );
    // ignore: dead_code
    Posts();

  }



}