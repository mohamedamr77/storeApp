import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomField extends StatelessWidget {
   CustomField({
    super.key,
    required this.hintText,required this.onChanged, this.keyboardType
  });
  final String hintText;
 final void Function(String)? onChanged;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      child: Column(
        children: [
          TextFormField(
            keyboardType: keyboardType ,
            onChanged: (value){},
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: const Color(0xff6e6a7c80).withOpacity(0.5),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
            ),
          ),
        ],
      ),
    );
  }
}