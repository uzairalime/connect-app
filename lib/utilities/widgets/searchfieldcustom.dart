import 'package:connectapp/utilities/appdimenstios.dart';
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
      padding:  EdgeInsets.symmetric(horizontal: AppDm().paddinglr, vertical: AppDm().paddingmd),
      decoration: BoxDecoration(
        color: Appcolors().lightgrey,
        borderRadius: BorderRadius.circular(AppDm().radiuslr),
      ),
      child: TextFormField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.filter_alt_outlined),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
