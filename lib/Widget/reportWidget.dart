import 'package:flutter/material.dart';

class ReportWidget extends StatelessWidget {
  const ReportWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [Icon(Icons.report), Text('Report')],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(Icons.connecting_airports_sharp),
                      SizedBox(width: 8),
                      Text('Report')
                    ],
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(Icons.remove_red_eye_outlined)),
              ),
            ],
          )
        ],
      ),
    );
  }
}