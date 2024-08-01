

import 'package:share_plus/share_plus.dart';

class CustomShareFile{
 static void shareData (String text, String url) async {

       await Share.share('$text $url');
  }
}