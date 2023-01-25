import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colors.dart';
import 'custom_textfield_container.dart';

class CustomTextfield extends StatelessWidget {
  final String? hintText; //untuk menampilkan hint pada textfield
  final ValueChanged<String?>? onSaved; //untuk memproses event onsaved
  final ValueChanged<String?>? onChanged; //untuk memproses event onchanged
  final Function? validator; //untuk memproses event validation
  final TextEditingController? controller; //untuk set controller
  final bool?
      readonly; //untuk setting apakah textfieldnya bisa diisi atau hanya dibaca
  final TextInputType?
      keyboardType; //untuk setting type keyboard yang muncul ketika event ontype
  final List<TextInputFormatter>?
      inputFormatters; //untuk setting format inputan
  final FocusNode? focus;

  const CustomTextfield({
    Key? key,
    this.controller,
    this.readonly = false,
    this.hintText,
    this.focus,
    this.keyboardType,
    this.inputFormatters,
    this.onSaved,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextfieldContainer(
      child: TextFormField(
        controller: controller,
        onSaved: onSaved,
        onChanged: onChanged,
        readOnly: readonly!,
        focusNode: focus,
        validator: validator as String? Function(String?)?,
        style: Theme.of(context).textTheme.bodyText2,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        cursorColor: Colors.grey,
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
        ),
      ),
    );
  }
}
