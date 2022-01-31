import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final picker = ImagePicker();
  String msg = "ここに画像がセットされます";

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
            ElevatedButton(
                onPressed: ()  {
                  //カメラ起動して撮影→撮影後画像補正画面となる
                  // var pickedFile =
                  //     await picker.pickImage(source: ImageSource.camera);
                  setState(() {
                    msg = "撮影画像表示中";
                  });
                },
                child: Text("カメラ起動")),
            Text(msg),
            Expanded(
                child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Center(child: Text("撮影画像を表示")),
            ))
          ],
        ),
      ),
    );
  }
}
