
import 'package:flutter/material.dart';

import 'core/utils/app_colors.dart';

class UIWidget extends StatelessWidget {
  const UIWidget({super.key, required this.myData});

  final MyData myData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
          size: 35,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              size: 40,
              Icons.more_vert_rounded,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Image.network(
                myData.mainImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.49,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myData.title,
                        style: const TextStyle(fontSize: 30),
                      ),
                      Text(
                        myData.description,
                        style: const TextStyle(fontSize: 20),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Picture',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      PictureListWidget(
                        pictureUrls: myData.pictureUrls,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Text(
                              'More in Bile',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyData {
  final String title;
  final String description;
  final String mainImage;
  final List<String> pictureUrls;

  MyData({
    required this.title,
    required this.description,
    required this.pictureUrls,
    required this.mainImage,
  });

  factory MyData.fromMap(Map<String, dynamic> map) {
    return MyData(
      title: map['title'],
      description: map['description'],
      pictureUrls: List<String>.from(map['pictureUrls']),
      mainImage: map['mainImage'],
    );
  }
}

Map<String, dynamic> dataMap = {
  'title': 'Nusae Pedniad',
  'mainImage':
      'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
  'description':
      'The sound of rain gently tapping on the window pane brings a sense of calm and introspection. Its on these wet afternoons that one can truly appreciate the beauty of natures rhythm. The world seems to slow down, allowing for moments of quiet contemplation.',
  'pictureUrls': [
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
    'https://images.unsplash.com/photo-1693922874336-fd3c4b0084b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2567&q=80',
  ],
};

MyData myData = MyData.fromMap(dataMap);

class PictureListWidget extends StatelessWidget {
  final List<String> pictureUrls;

  PictureListWidget({required this.pictureUrls});

  @override
  Widget build(BuildContext context) {
    List<String> displayedUrls =
        pictureUrls.take(5).toList(); // Only take the first 4 images

    return SizedBox(
      // width: double.infinity,
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var i = 0; i < displayedUrls.length; i++)
            Container(
              margin: const EdgeInsets.all(8.0),
              child: i == 4 &&
                      pictureUrls.length > 5 // Check if it's the last image
                  ? Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            displayedUrls[i],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned.fill(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.textColor.withOpacity(0.4),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 4.0,
                            ),
                            child: Center(
                              child: Text(
                                '+${pictureUrls.length - 5}',
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        displayedUrls[i],
                        fit: BoxFit.fill,
                      ),
                    ),
            ),
        ],
      ),
    );
  }
}
