import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final String title;
  final String details;

  const DetailCard({super.key, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              Text(details,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 16, color: Colors.white70)),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white54
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("CLOSE",style:TextStyle(
                    color: Colors.black
                  ),),
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