import 'package:datetime_picker_formfield_new/datetime_picker_formfield_new.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../utils/colors.dart';
import 'custom_textfield_container.dart';

class CustomTextfieldDatePicker extends StatelessWidget {
  final String? hintText;
  final ValueChanged<DateTime?>? onSaved;
  final Function? validator;
  final bool? readonly;
  final DateTime? initialValue;
  final TextEditingController? controller; //untuk set controller

  const CustomTextfieldDatePicker({
    Key? key,
    this.readonly = false,
    this.controller,
    this.hintText,
    this.initialValue,
    this.onSaved,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final format = DateFormat("yyyy-MM-dd");
    return CustomTextfieldContainer(
      child: DateTimeField(
        format: format,
        controller: controller,
        onShowPicker: (context, currentValue) {
          return showDatePicker(
            context: context,
            firstDate: DateTime(1900),
            initialDate: currentValue ?? DateTime.now(),
            lastDate: DateTime(2100),
            builder: (BuildContext context, Widget? child) {
              return Theme(
                data: ThemeData.light().copyWith(
                  colorScheme: const ColorScheme.light(primary: primaryColor),
                ),
                child: child!,
              );
            },
          );
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: initialValue,
        onSaved: onSaved,
        readOnly: readonly!,
        validator: validator as String? Function(DateTime?)?,
        style: Theme.of(context).textTheme.bodyText2,
        cursorColor: greyColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
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
