import 'dart:io';

import 'package:expensestracke/ImageSelection.dart';
import 'package:flutter/material.dart';

class AddCourse extends StatelessWidget {
  AddCourse({Key? key}) : super(key: key);
  final TextEditingController courseTitle = TextEditingController();
  final TextEditingController courseDescription = TextEditingController();
  final FocusNode _titleFocus = FocusNode();
  final FocusNode _descriptionFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: courseTitle,
            autofocus: true,
            decoration: const InputDecoration(labelText: 'Course Title'),
            focusNode: _titleFocus,
            textInputAction: TextInputAction.next,
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(_descriptionFocus);
            },
          ),
          TextField(
            controller: courseDescription,
            decoration: const InputDecoration(labelText: 'Course Description'),
            focusNode: _descriptionFocus,
            textInputAction: TextInputAction.done,
          ),
          ImageSelectionScreen(onImageSelected: _handleImageSelection),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ElevatedButton(
                onPressed: () {
                  if (courseDescription.text.isEmpty ||
                      courseTitle.text.isEmpty) {
                    print(courseTitle.text);
                  }
                  Navigator.pop(
                    context,
                    courseDescription.text,
                  );
                },
                child: const Text("ok")),
          ),
        ],
      ),
    ));
  }

  void _handleImageSelection(File? image) {
    print(
        "Selected image path in AddCourse: ${image?.path} cousrseTitle; ${courseTitle.text} Course Detail : ${courseDescription.text}");
  }
}
