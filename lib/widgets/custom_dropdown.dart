import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final List<String?> listData;
  final String? hintText;
  final String? searchText;
  final ValueChanged<String?>? onChanged;
  final bool? showClear;
  final String? selected;
  final Function? validator;

  const CustomDropdown({
    Key? key,
    required this.listData,
    this.hintText,
    this.searchText = "",
    this.showClear = false,
    this.selected,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
/*return DropdownSearch<String?>(
      searchFieldProps: TextFieldProps(
        decoration: InputDecoration(
          hintText: searchText,
          contentPadding: const EdgeInsets.all(10),
          labelStyle: greyTextStyle,
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
      mode: mode,
      dropdownSearchBaseStyle: greyTextStyle,
      showSearchBox: true,
      isFilteredOnline: true,
      showClearButton: showClear ?? false,
      items: listData,
      selectedItem: selected,
      popupTitle: Container(
        height: 30,
        decoration: const BoxDecoration(
          color: primaryColor,
        ),
        child: Center(
          child: Text(
            hintText ?? "",
            style: whiteTextStyle.copyWith(fontSize: 16),
          ),
        ),
      ),
      dropdownSearchDecoration: InputDecoration(
        hintText: hintText,
        labelText: hintText,
        contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        border: const OutlineInputBorder(),
        fillColor: greyDarkColor,
      ),
      popupSafeArea: const PopupSafeAreaProps(bottom: false, top: false),
      validator: validator as String? Function(String?)?,
      onChanged: onChanged,
    );
  }*/
}
