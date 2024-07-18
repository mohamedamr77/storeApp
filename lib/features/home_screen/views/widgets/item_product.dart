import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeamr/features/update_product_page/views/screen.dart';

// ignore: use_key_in_widget_constructors
class ItemProduct extends StatelessWidget{
  const ItemProduct({super.key, required this.name, required this.price, required this.image});
 final String name;
 final num price;
 final String image;
  @override
  Widget build(BuildContext context) {
   return  GestureDetector(
     onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) => const UpdateProductScreen(),));
     },
     child: Container(
       padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
       margin: const EdgeInsets.all(8),
       width: MediaQuery.of(context).size.width*0.45,
       height: MediaQuery.of(context).size.height*0.27,
       decoration: BoxDecoration(
         boxShadow: [
           BoxShadow(
             color: Colors.grey.withOpacity(0.3),
             spreadRadius: 5,
             blurRadius: 7,
             offset: const Offset(0, 3), // changes position of shadow
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
             image,
             width: MediaQuery.of(context).size.width * 0.44,
             height: MediaQuery.of(context).size.height * 0.15,
           ),
           const SizedBox(height: 6,),
           Text(name,
             maxLines: 1,
             overflow: TextOverflow.ellipsis,
             style: TextStyle(
               color: Colors.grey[700],
               fontSize: 14,
             ),
           ),
           const SizedBox(height: 6,),
           Row(
             children: [
                Expanded(child: Text("\$$price")),
               GestureDetector(
                   onTap: (){

                   },
                   child: const FaIcon(FontAwesomeIcons.heart,))
             ],
           )
         ],
       ),

     ),
   );
  }

}