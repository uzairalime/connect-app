import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:flutter/material.dart';

class SearchfieldCustom extends StatelessWidget {
  final hintText;
  final searchController;
  const SearchfieldCustom({super.key, this.hintText, this.searchController});


  @override
  Widget build(BuildContext context) {
    // TextEditingController searchController = TextEditingController();
    return Container(
      // width: Get.width*0.95,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Appcolors().lightgrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.filter_alt_outlined),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
