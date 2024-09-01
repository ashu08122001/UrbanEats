import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddFood extends StatefulWidget {
  const AddFood({super.key});

  @override
  State<AddFood> createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  final List<String> items = ["Pizza", "Burger", "Noodles", "Ice-Cream", "Momos"];
  String? value; // Current selected value for the dropdown
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController pricecontroller = TextEditingController();
  final TextEditingController detailcontroller = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  File? selectedImage;

  Future getImage() async{
    var image= await _picker.pickImage(source: ImageSource.gallery);
    selectedImage= File(image!.path);
    setState(() {

    });
  }




  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff191f22),
              Color(0xff0d0c0b),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Center(
                    child: Text(
                      "Add Item",
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: "Font1",
                        fontSize: screenWidth * 0.12,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Upload the Item Picture",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: screenWidth * 0.04,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                selectedImage==null?

                GestureDetector(
                  onTap: (){
                    getImage();
                  },
                  child: Material(
                    elevation: 2,
                    color: const Color(0xff191f22),
                    child: Container(
                      height: screenHeight * 0.2,
                      width: screenWidth * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white70, width: 1.5),
                      ),
                      child: Image.file(
                        selectedImage!,
                        fit: BoxFit.cover,
                      )
                    )
                  ),
                ):
                SizedBox(height: screenHeight * 0.04),
                _buildTextField(
                  label: "Item Name",
                  controller: namecontroller,
                  hintText: "Enter item here",
                ),
                SizedBox(height: screenHeight * 0.04),
                _buildTextField(
                  label: "Item Price",
                  controller: pricecontroller,
                  hintText: "Enter item price",
                ),
                SizedBox(height: screenHeight * 0.04),
                _buildTextField(
                  label: "Item Detail",
                  controller: detailcontroller,
                  hintText: "Enter item Detail",
                  maxLines: 6,
                ),
                SizedBox(height: screenHeight * 0.04),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white70.withOpacity(0.04),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white70, width: 1),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: value,
                      items: items.map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item, style: TextStyle(color: Colors.white70)),
                      )).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          value = newValue;
                        });
                      },
                      dropdownColor: Colors.black,
                      hint: Text("Select Category", style: TextStyle(color: Colors.white70)),
                      iconSize: 36,
                      icon: Icon(Icons.arrow_drop_down, color: Colors.white70),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build text fields
  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    required String hintText,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white70,
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Container(
          decoration: BoxDecoration(
            color: Colors.white70.withOpacity(0.04),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white70, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextFormField(
              controller: controller,
              style: const TextStyle(color: Colors.white70),
              maxLines: maxLines,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.white70),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
