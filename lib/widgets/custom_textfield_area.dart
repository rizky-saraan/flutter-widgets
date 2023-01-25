import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'custom_textfield_container.dart';

class CustomTextfieldArea extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String?>? onSaved;
  final Function? validator;
  final TextEditingController? controller;
  final bool? readonly;
  final int? maxLength;

  const CustomTextfieldArea({
    Key? key,
    this.controller,
    this.readonly = false,
    this.hintText,
    this.onSaved,
    this.validator,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextfieldContainer(
      child: TextFormField(
        controller: controller,
        onSaved: onSaved,
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        maxLines: null,
        minLines: 4,
        maxLength: maxLength,
        readOnly: readonly!,
        validator: validator as String? Function(String?)?,
        style: Theme.of(context).textTheme.bodyText2,
        cursorColor: greyColor,
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: Theme.of(context).textTheme.bodyText2,
          errorStyle: const TextStyle(
            color: Colors.red,
          ),
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
