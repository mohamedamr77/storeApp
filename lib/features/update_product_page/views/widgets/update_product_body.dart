import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class UpdateProductBody extends StatelessWidget {
   UpdateProductBody({super.key});
    String? productName,description,image;
    int? price;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                   CustomField( hintText: 'Product Name', onChanged: (String data ) {
                         productName=data;
                   },),
                   CustomField( hintText: 'description', onChanged: (String data) {
                      description=data;
                   },),
                   CustomField(
                     keyboardType: TextInputType.number,
                     hintText: 'Price',
                     onChanged: (String data) {
                     price=int.parse(data);
                   },),
                   CustomField( hintText: 'image', onChanged: (String data) {
                     image=data;
                   },),
                   const SizedBox(height: 20),
                   SizedBox(
                     width: 200,
                     height: 40,
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.orange
                       ),
                         onPressed: (){}, child: const Text("Update",
                       style: TextStyle(
                         color: Colors.white
                       ),
                     )),
                   ),
              ],
      ),
    );
  }
}