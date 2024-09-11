import 'dart:developer';
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:connectapp/utilities/widgets/app_btn.dart';
import 'package:connectapp/utilities/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController photoController = TextEditingController();
    TextEditingController eventnameController = TextEditingController();
    TextEditingController eventtypeController = TextEditingController();
    TextEditingController fromdateController = TextEditingController();
    TextEditingController todateController = TextEditingController();
    TextEditingController starttimeController = TextEditingController();
    TextEditingController endtimeController = TextEditingController();
    TextEditingController locationController = TextEditingController();
    TextEditingController capacityController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Create Event",
          style: blackTextx,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(AppDm().paddinglr),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image field
            TxtField(
              labelText: "Upload Photo", 
              hintText: "Image Name",
              w: Get.width*0.95, 
              textController: photoController,
              inputType: TextInputType.text,
              icon: Icons.upload,
              
            ),
            SizedBox(height: Get.height*0.01,),
            // Event name and type
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Event name
                TxtField(
                  labelText: "Event Name",
                  hintText: "Event Name",
                  textController: eventnameController,
                  w: Get.width*0.45,
                  inputType: TextInputType.name,
                ),
                // Event type
                TxtField(
                  labelText: "Event Type",
                  hintText: "Event Type",
                  textController: eventtypeController,
                  w: Get.width*0.45,
                  inputType: TextInputType.text,
                ),
              ],
            ),
            SizedBox(height: Get.height*0.01,),
            // Event start and end date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Event start date
                TxtField(
                  labelText: "From Date",
                  hintText: "From Date",
                  textController: fromdateController,
                  w: Get.width*0.45,
                  inputType: TextInputType.datetime,
                ),
                // Event till to date
                TxtField(
                  labelText: "To Date",
                  hintText: "To Date",
                  textController: todateController,
                  w: Get.width*0.45,
                  inputType: TextInputType.datetime,
                ),
              ],
            ),
            SizedBox(height: Get.height*0.01,),
            // Event start and end time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Event start time
                TxtField(
                  labelText: "Start Time",
                  hintText: "Start Time",
                  textController: starttimeController,
                  w: Get.width*0.45,
                  inputType: TextInputType.datetime,
                ),
                // Event till time
                TxtField(
                  labelText: "End Time",
                  hintText: "End Time",
                  textController: endtimeController,
                  w: Get.width*0.45,
                  inputType: TextInputType.datetime,
                ),
              ],
            ),
            SizedBox(height: Get.height*0.01,),
            // Event location and Capacity
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Event location
                TxtField(
                  labelText: "Location",
                  hintText: "Location",
                  textController: locationController,
                  w: Get.width*0.45,
                  inputType: TextInputType.streetAddress,
                ),
                // Event Capacity
                TxtField(
                  labelText: "Capacity",
                  hintText: "Capacity",
                  textController: capacityController,
                  w: Get.width*0.45,
                  inputType: TextInputType.number,
                ),

              ],
            ),
            SizedBox(height: Get.height*0.01,),
            // Event description
            TxtField(
              labelText: "Description",
              hintText: "Description",
              textController: descriptionController,
              w: Get.width*0.95,
              inputType: TextInputType.text,
            ),
            SizedBox(height: Get.height*0.02,),
            AppBtn(name: "Create Event", onTap: ()=>log("create event btn"),widthbtn: Get.width*0.6,), 
            
          ],
        ),
      ),
    );
  }
}
