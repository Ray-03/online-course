import 'package:flutter/material.dart';
import 'package:kantongilmu/pages/tappable_course_card.dart';

import 'bordered_container.dart';

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BorderedContainer(
        trainerName: 'Course',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TappableCourseCard(
              link:
                  'https://www.gandy-gallery.com/wp-content/uploads/2018/05/CHAPTER-1-logo.jpeg',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.amber,
            ),
            TappableCourseCard(
              link:
                  'https://image.winudf.com/v2/image1/Zm90bml0ZS5jaGFwdGVyMnNlYXNvbjEuY29tX3NjcmVlbl8wXzE1NzI1ODk4ODNfMDEz/screen-0.jpg?fakeurl=1&type=.jpg',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.amber,
            ),
            TappableCourseCard(
              link:
                  'https://s3.amazonaws.com/tinycards/image/bc38d0e98e5d19881f5022c8930f2fa6',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.amber,
            ),
            TappableCourseCard(
              link:
                  'https://chapter4.eu/sites/default/files/chapter-4-header-logo.png',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.amber,
            ),
            TappableCourseCard(
              link:
                  'https://images.squarespace-cdn.com/content/v1/59b17738ccc5c56aaec50db0/1509388692368-CBRS7T1G018EM3BPJBYS/ke17ZwdGBToddI8pDm48kNvT88LknE-K9M4pGNO0Iqd7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1USOFn4xF8vTWDNAUBm5ducQhX-V3oVjSmr829Rco4W2Uo49ZdOtO_QXox0_W7i2zEA/IMG_0201.JPG',
            ),
          ],
        ),
      ),
    );
  }
}
