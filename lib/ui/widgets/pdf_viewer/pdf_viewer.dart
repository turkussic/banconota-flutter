import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:app/res/dimensions.dart';
import 'package:flutter/cupertino.dart';

class PdfViewer extends StatefulWidget {
  const PdfViewer({required this.doc, Key? key}) : super(key: key);

  final PDFDocument doc;

  @override
  State<PdfViewer> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions.of(context);
    return SizedBox(
        height: dimensions.fullHeight,
        width: dimensions.fullWidth,
        child: PDFViewer(
          document: widget.doc,
        ));
  }
}
