import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ocr_camera/models/model/news_item.dart';
import 'dart:io' as io;

import 'package:ocr_camera/models/viewmodels/news_list_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final picker = ImagePicker();
  String msg = "ここに画像がセットされます";
  String resultMsg = "結果が表示されます";
  File? _image = null;

  //NewsListViewModel viewModel = NewsListViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OCR用カメラ補正 テスト"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      //カメラ起動して撮影→撮影後画像補正画面となる
                      getImageFromCamera();
                      msg = "カメラ起動";
                    },
                    child: Text("カメラ起動")),
                ElevatedButton(
                    onPressed: () async {
                      //カメラ起動して撮影→撮影後画像補正画面となる
                      getImageFromGallery();
                      msg = "ライブラリ起動";
                    },
                    child: Text("ギャラリー選択")),
              ],
            ),
            Text(msg),
            Expanded(
                flex: 2,
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: _image == null
                      ? Center(child: Text("撮影画像を表示"))
                      : Image.file(_image!),
                )),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    Text("- result -"),
                    Text(resultMsg),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  //OCR送信 apiで通信をする

                  //List<NewsItem> list =  await viewModel.getNews();
                  // list.forEach((element) {
                  // });
                  setState(() {
                    msg = "OCR　API実行";
                  });
                },
                child: Text("OCR"))
          ],
        ),
      ),
    );
  }

  Future getImageFromCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    msg = "撮影画像表示中";
    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  Future getImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile!.path);
    });
  }
}
