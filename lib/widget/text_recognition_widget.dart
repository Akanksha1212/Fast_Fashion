import 'dart:io';

import 'package:fasf_fashion/api/firebase_ml_api.dart';
import 'package:fasf_fashion/widget/text_area_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'controls_widget.dart';

class TextRecognitionWidget extends StatefulWidget {
  const TextRecognitionWidget({
    Key key,
  }) : super(key: key);

  @override
  _TextRecognitionWidgetState createState() => _TextRecognitionWidgetState();
}

class _TextRecognitionWidgetState extends State<TextRecognitionWidget> {
  String text = '';
  File image;

  @override
  Widget build(BuildContext context) => Expanded(
        child: Column(
          children: [
            Expanded(child: buildImage()),
            const SizedBox(height: 16),
            ControlsWidget(
              onClickedPickImage: pickImage,
              onClickedScanText: scanText,
              result: result,
            ),
            const SizedBox(height: 16),
          ],
        ),
      );

  Widget buildImage() => Container(
        child: image != null
            ? Image.file(image)
            : Container(
                height: 120,
                width: 120,
                child: Image.network(
                    'https://image.flaticon.com/icons/png/512/1160/1160155.png')),
      );

  Future pickImage() async {
    final file = await ImagePicker().getImage(source: ImageSource.camera);
    setImage(File(file.path));
  }

  Future result() async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TextAreaWidget(
                  text: text,
                )));
  }

  Future scanText() async {
    showDialog(
      builder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
      context: context,
    );

    final text = await FirebaseMLApi.recogniseText(image);
    setText(text);

    Navigator.of(context).pop();
  }

  void setImage(File newImage) {
    setState(() {
      image = newImage;
    });
  }

  void setText(String newText) {
    setState(() {
      text = newText;
    });
  }
}
