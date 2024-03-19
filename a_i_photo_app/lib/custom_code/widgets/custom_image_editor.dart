// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:image_editor_plus/image_editor_plus.dart';

class CustomImageEditor extends StatefulWidget {
  const CustomImageEditor({
    super.key,
    this.width,
    this.height,
    required this.publicurl,
  });

  final double? width;
  final double? height;
  final String publicurl;

  @override
  State<CustomImageEditor> createState() => _CustomImageEditorState();
}

class _CustomImageEditorState extends State<CustomImageEditor> {
  Uint8List? imageBytes;

  @override
  void initState() {
    super.initState();
    _loadImageBytes();
  }

  Future<void> _loadImageBytes() async {
    final response = await http.get(Uri.parse(widget.publicurl));
    if (response.statusCode == 200) {
      setState(() {
        imageBytes = response.bodyBytes;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: imageBytes != null
          ? ImageEditor(
              image: imageBytes!,
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
