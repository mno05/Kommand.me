import 'package:flutter/material.dart';

class TextFieldC extends StatelessWidget {
  final String hintText;
  final String errM;
  final bool isMail;
  final bool isPassWord;
  final bool isNumber;
  final bool isFc;
  final bool isEnable;
  final void Function(String)? onChanged;

  final TextEditingController? controller;
  const TextFieldC({
    super.key,
     this.controller,
    this.hintText = '',
    required this.errM,
    this.isMail = false,
    this.isPassWord = false,
    this.isNumber = false,
    this.isFc=false,
    this.isEnable=true,
    this.onChanged,

  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: w / 3.5,
        child: TextFormField(
          onChanged: onChanged,
          enabled: isEnable,
          controller: controller,
          keyboardType: isMail
              ? TextInputType.emailAddress
              : isNumber
                  ? TextInputType.number
                  : TextInputType.text,
          obscureText: isPassWord,
          validator: (value) => value!.isEmpty ? this.errM : null,
          decoration: InputDecoration(
            
            suffixIcon: isFc?Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Fc",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                  ),
                ),
              ],
            ):null,
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
