import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  final String value,heading;
  TopCard({
    super.key,
    required this.value,
    required this.heading
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(8),
        elevation: 8,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18)),
        // color: Colors.white12,
        color: Colors.grey[700],
        clipBehavior: Clip.antiAlias,
        child: Container(
          // width: double.infinity,
          height: MediaQuery.of(context).size.height / 6,
          decoration: const BoxDecoration(
              color: Colors.black12
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      value,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      // '5M CO\u2082eq',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.circle)
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                heading,
                // 'Savings',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
