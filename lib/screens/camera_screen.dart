import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.camera_alt_rounded,
          size: 50,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'In this screen you can take picture from camera',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
