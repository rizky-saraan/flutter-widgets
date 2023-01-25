import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'custom_textfield_container.dart';

class CustomTextfieldPassword extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String?>? onSaved;
  final ValueChanged<String>? onChanged;
  final Function? validator;
  final bool? obscureText; //untuk membuat text tidak terlihat
  final VoidCallback? togglePassword;
  final TextEditingController? controller;

  const CustomTextfieldPassword(
      {Key? key,
      this.controller,
      this.hintText,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.obscureText = true,
      this.togglePassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextfieldContainer(
      child: TextFormField(
        controller: controller,
        obscureText: obscureText!,
        onSaved: onSaved,
        onChanged: onChanged,
        validator: validator as String? Function(String?)?,
        style: Theme.of(context).textTheme.bodyText2,
        cursorColor: greyColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          labelText: hintText,
          labelStyle: Theme.of(context).textTheme.bodyText2,
          errorStyle: const TextStyle(
            color: Colors.red,
          ),
          fillColor: blackColor,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 1.0),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              obscureText! ? Icons.visibility_off : Icons.visibility,
              color: primaryColor,
            ),
            onPressed: togglePassword,
          ),
        ),
      ),
    );
  }
}
