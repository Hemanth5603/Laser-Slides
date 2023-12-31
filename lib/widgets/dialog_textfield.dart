import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDialogTextField extends StatefulWidget {
  CustomDialogTextField({
    super.key,
    required this.hint,
    required this.title,
    required this.controller,
    required this.label,
  });
  String label;
  String title;
  String hint;
  TextEditingController controller; 
  @override
  State<CustomDialogTextField> createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomDialogTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title,style: const TextStyle(fontFamily: 'sen',fontSize: 16,fontWeight: FontWeight.bold),),
        const SizedBox(height: 5,),
        TextField(
          controller: widget.controller,
            style: const TextStyle(color: Color.fromARGB(255, 34, 34, 34),fontFamily: 'sen'), 
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: const TextStyle(color: Color.fromARGB(255, 77, 77, 77)),
              filled: true,
              fillColor: const Color.fromARGB(255, 231, 231, 231),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Color.fromARGB(255, 237, 237, 237)), 
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Color.fromARGB(255, 27, 27, 27)),
              ),
            ),
          ),
      ],
    );
  }
}



