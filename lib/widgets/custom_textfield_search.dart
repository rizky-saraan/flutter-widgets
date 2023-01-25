import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colors.dart';

class CustomTextfieldSearch extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String?>? onSaved;
  final ValueChanged<String?>? onChanged;
  final Function? onClear;
  final Function? validator;
  final TextEditingController? controller;
  final bool? readonly;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focus;

  const CustomTextfieldSearch({
    Key? key,
    this.controller,
    this.readonly,
    this.hintText,
    this.focus,
    this.keyboardType,
    this.inputFormatters,
    this.onSaved,
    this.onChanged,
    this.onClear,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.all(0),
        hintText: hintText,
        prefixIcon: const Icon(
          Icons.search,
          color: greyColor,
        ),
        labelStyle: Theme.of(context).textTheme.bodyText2,
        errorStyle: const TextStyle(
          color: Colors.red,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: greyColor, width: 1.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 1.0),
        ),
      ),
    );
  }
}
