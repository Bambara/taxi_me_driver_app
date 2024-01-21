import 'dart:io';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../api/rest/api_client.dart';
import '../../core/app_export.dart';

class DispatcherController extends GetxController {
  final _logger = Logger(filter: null);

  final _prefUtils = Get.find<PrefUtils>();

  final _apiClient = ApiClient();

  final _userCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  File _frontImage = File('');
  bool _isFrontSelected = false;

  Future<File> pickFrontImage() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      _logger.i('select');
      _isFrontSelected = true;
      return File(pickedFile.path);
    } else {
      _isFrontSelected = false;
      getImageFileFromAssets('images/vehicle_front.png');
    }
    //update();
    return File('');
  }

  Future<File?> getImageFileFromAssets(String path) async {
    try {
      final byteData = await rootBundle.load('assets/$path');
      final file = File('${(await getTemporaryDirectory()).path}/$path');
      await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
      return file;
    } catch (e) {
      _logger.e(e);
    }

    //update();
    return null;
  }

  void showTAC() async {
    try {
      const url = 'https://taxime.lk/privacy-policy/';
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        throw "Could not launch $url";
      }
    } catch (e) {
      _logger.e(e);
    }
  }

  get prefUtils => _prefUtils;

  get userCtrl => _userCtrl;

  get passCtrl => _passCtrl;

  bool get isFrontSelected => _isFrontSelected;

  set isFrontSelected(bool value) {
    _isFrontSelected = value;
    update();
  }

  File get frontImage => _frontImage;

  set frontImage(File value) {
    _frontImage = value;
    update();
  }
}
