import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageSelectionScreen extends StatefulWidget {
  final void Function(File?) onImageSelected;

  const ImageSelectionScreen({Key? key, required this.onImageSelected})
      : super(key: key);
  @override
  _ImageSelectionScreenState createState() => _ImageSelectionScreenState();
}

class _ImageSelectionScreenState extends State<ImageSelectionScreen> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
      widget.onImageSelected(_image);
    }
  }

  @override
  Widget build(BuildContext context) {
    print("Current image path: ${_image?.path}");
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _image == null
            ? const Text('No image selected.')
            : Image.file(
                _image!,
                height: 140,
                width: 120,
              ),
        Padding(
            padding: const EdgeInsets.all(1),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    _pickImage(ImageSource.camera);
                  },
                  child: const Text(
                    'Camera',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _pickImage(ImageSource.gallery);
                  },
                  child: const Text('Gallery'),
                ),
              ],
            ))
      ],
    );
  }
}
