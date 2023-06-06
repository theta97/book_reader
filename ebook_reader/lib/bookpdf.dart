import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:ebook_reader/api/books_api.dart';
import 'package:ebook_reader/models/book_model.dart';

/// Represents Homepage for Navigation
class Pdf extends StatelessWidget {
  const Pdf({Key? key, required this.pdflink, required this.booktitle})
      : super(key: key);
  final String pdflink;
  final String booktitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF203A43),
        centerTitle: true,
        title: Text(
          booktitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: <Widget>[
          // IconButton(
          //   icon: const Icon(
          //     Icons.settings_applications_sharp,
          //     color: Colors.white,
          //     semanticLabel: 'Settings',
          //   ),
          //   onPressed: () {},
          // ),
        ],
      ),
      body: SfPdfViewer.network(
        pdflink,
      ),
    );
  }
}


//   @override
//   State<Pdf> createState() => _Pdf();
// }

// class _Pdf extends State<Pdf> {
//   final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  
 

//   // @override
//   // void initState() {
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("bookname1"),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(
//               Icons.bookmark,
//               color: Colors.white,
//               semanticLabel: 'Bookmark',
//             ),
//             onPressed: () {
//               _pdfViewerKey.currentState?.openBookmarkView();
//             },
//           ),
//         ],
//       ),
//       body: SfPdfViewer.network(
//         pdflink,
//         key: _pdfViewerKey,
//       ),
//     );
//   }




// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Syncfusion Flutter PDF Viewer'),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(
//               Icons.bookmark,
//               color: Colors.white,
//               semanticLabel: 'Bookmark',
//             ),
//             onPressed: () {
//               _pdfViewerKey.currentState?.openBookmarkView();
//             },
//           ),
//         ],
//       ),
//       body: SfPdfViewer.network(
//         snapshot.data![index].bookpdf,
//         key: _pdfViewerKey,
//       ),
//     );
//   }







