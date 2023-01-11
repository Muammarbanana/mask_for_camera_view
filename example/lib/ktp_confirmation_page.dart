import 'dart:typed_data';

import 'package:flutter/material.dart';

class KtpConfirmationPage extends StatefulWidget {
  final Uint8List ktpImage;
  final Uint8List fullImage;
  const KtpConfirmationPage({
    required this.ktpImage,
    required this.fullImage,
    Key? key,
  }) : super(key: key);

  @override
  State<KtpConfirmationPage> createState() => _KtpConfirmationPageState();
}

class _KtpConfirmationPageState extends State<KtpConfirmationPage> {
  bool isScanLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.memory(
                  widget.fullImage,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 630,
                color: Colors.black.withOpacity(0.7),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 240,
                    width: 382,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.memory(widget.ktpImage, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 55, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icon/icon_x.png',
                    height: 34,
                    width: 34,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(24),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Text(
                    'Make sure KTP is good',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24),
                  SizedBox(height: 12),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
