import 'package:flutter/material.dart';

class SimpleListView extends StatelessWidget {
  final List<String> items;
  final List<String> subTitle;
  final List<String> images;
// List of items to display

  const SimpleListView(
      {Key? key,
      required this.items,
      required this.subTitle,
      required this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("images  which i get  $images");

    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          // onTap: () => Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => DetailScreen(
          //       item: items[index],
          //       subTitle: subTitle[index],
          //       image: images[index],
          //     ),
          //   ),
          // ),
          leading: CircleAvatar(
            foregroundImage: AssetImage(images[index]),
          ),
          title: Text(items[index]), // Display item from the list
          subtitle: Text(subTitle[index]), // Replace with your actual data
        );
      },
    );
  }
}
