import 'package:flutter/material.dart';
import 'package:flutter_assignments/common/app_ui_configs/app_colors/app_colors.dart';
import 'package:flutter_assignments/common/app_ui_configs/app_fonts/app_fonts.dart';
import 'package:flutter_assignments/common/utils/enums/app_enums.dart';
import 'package:flutter_assignments/presentation/providers/app_provider.dart';
import 'package:flutter_assignments/presentation/widgets/common_widgets/common_appbar/common_appbar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(title: 'Welcome !!'),
      body: Column(
        children: [
          SizedBox(height: 10),
          FutureBuilder(
            future: appProvider.fetchCountryList(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (appProvider.state == UserState.loaded &&
                  appProvider.countries.isNotEmpty) {
                return Text(
                  "List Countries ${appProvider.countries.length}",
                  style: AppFonts.medium(),
                );
              } else {
                return Text("Welcome", style: AppFonts.medium());
              }
            },
          ),
        ],
      ),
    );
  }
}
