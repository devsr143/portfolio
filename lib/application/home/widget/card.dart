// import 'package:flutter/material.dart';
//
// class DetailCard extends StatelessWidget {
//   final String title;
//   final String details;
//
//   const DetailCard({super.key, required this.title, required this.details});
//
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       backgroundColor: Colors.grey[900],
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: SingleChildScrollView(
//           child: Column(
//             spacing: 20,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(title,
//                   style: const TextStyle(
//                       fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
//               Text(details,
//                   textAlign: TextAlign.justify,
//                   style: const TextStyle(fontSize: 16, color: Colors.white70)),
//               SizedBox(
//                 width: 200,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white54
//                   ),
//                   onPressed: () => Navigator.of(context).pop(),
//                   child: const Text("CLOSE",style:TextStyle(
//                     color: Colors.black
//                   ),),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// void showDetailCard(BuildContext context, String title, String details) {
//   showDialog(
//       context: context,
//       builder: (context) => DetailCard(title: title, details: details));
// }


import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final String title;
  final String details;

  const DetailCard({super.key, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
            colors: [Color(0xFF1F1C2C), Color(0xFF928DAB)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // changed title color
                  shadows: [
                    Shadow(
                      offset: Offset(0, 1),
                      blurRadius: 2,
                      color: Colors.black54,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                details,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[300], // changed details color
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: 180,
                height: 45,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 5,
                  ),
                  child: Text(
                    "CLOSE",
                    style: TextStyle(
                      color: Colors.black, // changed button text color
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showDetailCard(BuildContext context, String title, String details) {
  showDialog(
      context: context,
      builder: (context) => DetailCard(title: title, details: details));
}