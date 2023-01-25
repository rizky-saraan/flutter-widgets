import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/theme.dart';

class CustomDropdownBottomSheet extends StatelessWidget {
  final List<String?> listData;
  final String? hintText;
  final String? searchText;
  final ValueChanged<String?>? onChanged;
  final bool? showClear;
  final String? selected;
  final Function? validator;
  final bool? isEnable;

  const CustomDropdownBottomSheet({
    Key? key,
    required this.listData,
    this.hintText,
    this.searchText = "",
    this.showClear = false,
    this.selected,
    this.onChanged,
    this.validator,
    this.isEnable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String?>(
      enabled: isEnable ?? true,
      popupProps: PopupProps.bottomSheet(
        isFilterOnline: true,
        showSearchBox: true,
        title: Container(
          height: 30,
          decoration: const BoxDecoration(
            color: accentColor,
          ),
          child: Center(
            child: Text(
              hintText ?? "",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: whiteColor),
            ),
          ),
        ),
        searchFieldProps: customTextFieldProps,
      ),
      items: listData,
      selectedItem: selected,
      clearButtonProps: ClearButtonProps(
        isVisible: showClear ?? false,
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          hintText: hintText,
          labelText: hintText,
          contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          border: const OutlineInputBorder(),
          fillColor: whiteColor,
        ),
        baseStyle: Theme.of(context).textTheme.bodyText1,
      ),
      validator: validator as String? Function(String?)?,
      onChanged: onChanged,
    );
  }
}
