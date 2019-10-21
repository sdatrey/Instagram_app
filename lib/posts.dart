import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Posts extends StatefulWidget{
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("asset/image/IMG_20170228_205809_570.jpg")
                      )
                    ),
                    ),
                    SizedBox(width: 12.0),
                    Text("Shourya",

                        style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        )
                        )
                  ]
                ),
                        IconButton(
                        icon: Icon(Icons.more_vert),
                            onPressed: (){},
                        )
              ],
            ),
        ),
        Container(
          child: Stack(
            children: <Widget>[
              Image.asset("asset/image/DSC00768.jpg",fit: BoxFit.cover),

            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.favorite,color: Colors.pink,size: 35.0), onPressed: (){}),
              SizedBox(width: 18.0,),
              IconButton(icon: Icon(Icons.mode_comment,size: 30.0,), onPressed: (){}),
              SizedBox(width: 18.0),
              IconButton(icon: Icon(Icons.share,size: 30.0), onPressed: (){}),
            ],
          ),
            IconButton(icon: Icon(Icons.bookmark_border,size: 35.0), onPressed: (){}),

          ],
        ),

        ),

          ],

        );

  }
}