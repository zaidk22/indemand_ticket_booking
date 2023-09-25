import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';


class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
    final ImagePicker imagePicker = ImagePicker();
  Uint8List? image;
  pickImage(ImageSource source) async {
    XFile? xFileImage = await imagePicker.pickImage(source: source);
    if (xFileImage != null) {
      image =await  xFileImage.readAsBytes();
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
            onTap: () => pickImage(ImageSource.gallery),
            child: CircleAvatar(
              backgroundColor: CustomColor.containerColor,
              radius: 42,
              child:   image != null ? CircleAvatar(
                radius: 40,
                backgroundImage: 
              MemoryImage(image!)
                 
                 ,
              )
              : const CircleAvatar(
                    radius: 42,
            
                backgroundImage: CachedNetworkImageProvider(ImageConstant.dummyNetworkImage)
             
              )
            
                 
              )
  
               
          );
 
 
  }
}