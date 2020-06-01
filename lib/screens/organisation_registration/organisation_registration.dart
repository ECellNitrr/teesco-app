import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/name_field.dart';
import 'widgets/tagline_field.dart';
import 'package:image_picker/image_picker.dart';

class OrganisationRegistrationScreen extends StatefulWidget {
  @override
  _OrganisationRegistrationScreenState createState() =>
      _OrganisationRegistrationScreenState();
}

class _OrganisationRegistrationScreenState
    extends State<OrganisationRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController taglineController = TextEditingController();
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "ORGANISATION REGISTRATION",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: null,
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.check,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: null),
            Padding(padding: EdgeInsets.only(right: 20.0))
          ],
        ),
        body: _buildInitial());
  }

  Widget _buildInitial() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 50.0, top: 50.0),
              child: GestureDetector(
                onTap: getImage,
                child: _image == null
                    ? CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.file_upload,
                          color: Colors.white,
                        ),
                      )
                    : CircleAvatar(
                        radius: 75,
                        backgroundImage: FileImage(_image),
                        backgroundColor: Colors.transparent,
                      ),
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
