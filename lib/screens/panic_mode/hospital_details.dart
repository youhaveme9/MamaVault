import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interrupt/config/UI_constraints.dart';
import 'package:interrupt/utils/hospital_data.dart';
import 'package:interrupt/widgets/hospital_details_widget.dart';

class HospitalDetails extends StatelessWidget {
  const HospitalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nearest Hospital Details',
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                    ).fontFamily,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Column(
                children: hospitalData.map((data) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: HospitalDetailsWidget(
                        hospitalName: data['hospitalName'],
                        address: data['address'],
                        distance: data['distance'],
                        url: data['url']),
                  );
                }).toList(),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
