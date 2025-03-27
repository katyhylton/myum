import 'package:flutter/material.dart';

class CampusEats extends StatefulWidget {
  final String img;
  final String title;
  final String summary;
  const CampusEats(this.img, this.title, this.summary, {super.key});

  @override
  State<CampusEats> createState() => _CampusEatsState();
}

class _CampusEatsState extends State<CampusEats> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0), 
            child: Image.network(
              widget.img,
              width: 200, 
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24, 
                    color: Colors.deepOrange, 
                  ),
                ),
                const SizedBox(height: 8), 
                Padding(
                  padding: const EdgeInsets.only(right: 16.0), 
                  child: Text(
                    widget.summary,
                    style: TextStyle(
                      fontSize: 14, 
                      color: Colors.black87, 
                      height: 1.5, 
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
