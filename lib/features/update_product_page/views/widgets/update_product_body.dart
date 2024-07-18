import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeamr/models/product_model.dart';
import 'package:storeamr/service/update_product.dart';

import 'custom_text_form_field.dart';

class UpdateProductBody extends StatefulWidget {
   const UpdateProductBody({super.key, required this.product});
     final ProductModel product;

  @override
  State<UpdateProductBody> createState() => _UpdateProductBodyState();
}

class _UpdateProductBodyState extends State<UpdateProductBody> {
    String? productName,description,image;

    String? price;
    bool  isLoading=false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: SingleChildScrollView(
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
                       price=data;
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
                           onPressed: () async {
                             isLoading=true;
                             setState(() {});
                             try{
                            await  updateProduct(widget.product);
                               if (kDebugMode) {
                                 print("successfully updated");
                               }
                            }catch(e){
                              if (kDebugMode) {
                                print("Error updating product: ${e.toString()}");
                              }
                            }

                             isLoading=false;
                             setState(() {});
                           },
                           child: const Text("Update",
                         style: TextStyle(
                           color: Colors.white
                         ),
                       )),
                     ),
                ],
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
   await UpdateProductService().updateProduct(
        title: productName!=null? productName! :product.title,
        description:  description!=null? description! :product.description,
        category:   product.category ,
        image:  image!=null? image! : product.image,
        price:  price!=null? price! :product.price.toString(), id: product.id,
    );

  }
}