import 'package:flutter/material.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/colors.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/font.dart';
class PassportDetailsTemplate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Text(
              'Passport Details',
              style: TextStyle(
                  color: kSecondTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 21.5),
          Divider(
            color: kBorderLine,
            thickness: 1,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 150, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Document Type',
                    style: Regular.copyWith(color: kSecondTextColor,fontSize: 14)
                ),
                Text(
                    '-',
                    style: Regular.copyWith(color: kMainTextColor,fontSize: 14)
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 130, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Issue Country',
                    style: Regular.copyWith(color: kSecondTextColor,fontSize: 14)
                ),
                Text(
                    'GRC',
                    style:
                    Regular.copyWith(color: kMainTextColor,fontSize: 14)
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 85, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Document Number',
                    style: Regular.copyWith(color: kSecondTextColor,fontSize: 14)
                ),
                Text(
                    '099072823',
                    style:
                    Regular.copyWith(color: kMainTextColor,fontSize: 14)
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 97, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Sure Name ',
                    style: Regular.copyWith(color: kSecondTextColor,fontSize: 14)
                ),
                Text(
                    'ALLAGAH',
                    style:
                    Regular.copyWith(color: kMainTextColor,fontSize: 14)
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 60, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'First Name',
                    style: Regular.copyWith(color: kSecondTextColor,fontSize: 14)
                ),
                Text(
                    'JAMES PATRICK',
                    style:
                    Regular.copyWith(color: kMainTextColor,fontSize: 14)
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 83, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Date of Birth',
                    style: Regular.copyWith(color: kSecondTextColor,fontSize: 14)
                ),
                Text(
                    '19 May 1959',
                    style:
                    Regular.copyWith(color: kMainTextColor,fontSize: 14)
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 132, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Nationality',
                    style: Regular.copyWith(color: kSecondTextColor,fontSize: 14)
                ),
                Text(
                    'GBit',
                    style:
                    Regular.copyWith(color: kMainTextColor,fontSize: 14)
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 145, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Gender',
                    style: Regular.copyWith(color: kSecondTextColor,fontSize: 14)
                ),
                Text(
                    'M',
                    style:
                    Regular.copyWith(color: kMainTextColor,fontSize: 14)
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 82, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Expiry Date',
                    style: Regular.copyWith(color: kSecondTextColor,fontSize: 14)
                ),
                Text(
                    '20 Mar 2019',
                    style:
                    Regular.copyWith(color: kMainTextColor,fontSize: 14)
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 15, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'MRZ Data',
                    style: Regular.copyWith(color: kSecondTextColor,fontSize: 14)
                ),
                Text(
                    '<<GGRCALLAGHAN<<\nJAMES<PATRIK<<<<<0\n990728234GBR59051\n99M1903201<<<<<<<',
                    style:
                    Regular.copyWith(color: kMainTextColor,fontSize: 14)
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}