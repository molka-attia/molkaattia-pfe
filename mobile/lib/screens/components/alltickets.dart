import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/constants/responsive.dart';
import 'package:responsive_admin_dashboard/screens/components/Allticketsadmin.dart';
import 'package:responsive_admin_dashboard/screens/components/analytic_cards.dart';
import 'package:responsive_admin_dashboard/screens/components/custom_appbar.dart';
import 'package:responsive_admin_dashboard/screens/components/Allusersadmin.dart';
import 'package:responsive_admin_dashboard/screens/components/drawer_menu.dart';
import 'package:responsive_admin_dashboard/screens/components/top_referals.dart';
import 'package:responsive_admin_dashboard/screens/components/users.dart';
import 'package:responsive_admin_dashboard/screens/components/users_by_device.dart';
import 'package:responsive_admin_dashboard/screens/components/viewers.dart';

import 'discussions.dart';

class Alltickets extends StatelessWidget {
  const Alltickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bgColor,
      drawer: DrawerMenu(),
   
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: DrawerMenu(),),
            Expanded(
              flex: 5,
              // child: DashboardContent(),
    //          child: Allusers(),
    child:Allticketsadmin(),
              
            )

          ],
        ),
      ),
    );
  }}