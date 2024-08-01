import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/domain/core/constants/api_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class DownloadDialog extends StatefulWidget {
  const DownloadDialog({super.key});

  @override
  State<DownloadDialog> createState() => _DownloadDialogState();
}

class _DownloadDialogState extends State<DownloadDialog> {

  double downloadProgress = 0.0;
  bool downloading = false;
  late String pdfPath;
  final Dio dio = Dio();

  @override
  void initState() {
 // _startDownload();
    super.initState();
  }
    void _startDownload() async {
    final url = ApiConstants.dummyPdfUrl;

    try {
      final dir = await getApplicationDocumentsDirectory();
      pdfPath = '${dir.path}/sample.pdf';

      await dio.download(
        url,
        pdfPath,

        onReceiveProgress: (received, total) {
            print('dow ${total}');
        },
      );

      // Open the downloaded PDF file here if needed.
    } catch (e) {
      print('error ${e.toString()}');
    }
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
              title: Text('Downloading...'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
               //   if (downloading)
                    CircularPercentIndicator(
                      radius: 100.0,
                      lineWidth: 8.0,
                      percent: downloadProgress,
                      center: Text('${(downloadProgress * 100).toStringAsFixed(2)}%',style: CustomTextStyle.subtitleBlackTextStyle,),
                      progressColor: Colors.blue,
                    ),
                  SizedBox(height: 20.0),
               ],
              ),
            );
  }
}