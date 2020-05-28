import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/name_field.dart';
import 'widgets/tagline_field.dart';
import 'package:image_picker/image_picker.dart';
class AddOrganisation extends StatefulWidget {
  @override
  _AddOrganisationState createState() => _AddOrganisationState();
}

class _AddOrganisationState extends State<AddOrganisation> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController taglineController = TextEditingController();
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TEESCO",style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios,color: Colors.black,),
            onTap: null,
          ),
          centerTitle: true,
          actions: <Widget>[
            GestureDetector(
              child: Icon(Icons.check,color: Colors.black,size: 30,),
              onTap: null,
            ),
            Padding(padding: EdgeInsets.only(right: 20.0))
          ],
        ),
        body: _buildInitial()
    );
  }

  Widget _buildInitial(){
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 50.0,top: 50.0),
              child: GestureDetector(
                onTap: getImage,
                child: _image==null?CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.file_upload,color: Colors.white,),
                ):CircleAvatar(
                  radius: 75,
                  backgroundImage: FileImage(_image),
                  backgroundColor: Colors.transparent,
                )
                ,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: NameField(nameController),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: TaglineField(taglineController),
            ),
          ],
        ),
      ),
    );
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
}

