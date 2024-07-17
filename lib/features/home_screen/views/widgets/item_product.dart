import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: use_key_in_widget_constructors
class ItemProduct extends StatelessWidget{
  const ItemProduct({super.key});

  @override
  Widget build(BuildContext context) {
   return  Container(
     padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
     margin: EdgeInsets.all(8),
     width: MediaQuery.of(context).size.width*0.45,
     height: MediaQuery.of(context).size.height*0.27,
     decoration: BoxDecoration(
       boxShadow: [
         BoxShadow(
           color: Colors.grey.withOpacity(0.3),
           spreadRadius: 5,
           blurRadius: 7,
           offset: Offset(0, 3), // changes position of shadow
         ),
       ],
       color: Colors.white,
       borderRadius: BorderRadius.circular(10),
       // border: Border.all(color: Colors.grey, width: 1),
     ),
     child:Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Image.network(
           "https://i.pravatar.cc",
           width: MediaQuery.of(context).size.width * 0.44,
           height: MediaQuery.of(context).size.height * 0.15,
         ),
         SizedBox(height: 6,),
         Text("T-Shirt",
           maxLines: 1,
           overflow: TextOverflow.ellipsis,
           style: TextStyle(
             color: Colors.grey[700],
             fontSize: 18,
           ),
         ),
         SizedBox(height: 6,),
         Row(
           children: [
             Expanded(child: Text("\$225")),
             GestureDetector(
                 onTap: (){

                 },
                 child: FaIcon(FontAwesomeIcons.heart,))
           ],
         )
       ],
     ),

   );
  }

}