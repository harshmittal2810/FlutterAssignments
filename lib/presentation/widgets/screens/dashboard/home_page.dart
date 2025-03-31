import 'package:flutter/material.dart';
import 'package:flutter_assignments/common/app_ui_configs/app_colors/app_colors.dart';
import 'package:flutter_assignments/common/app_ui_configs/app_fonts/app_fonts.dart';
import 'package:flutter_assignments/common/app_ui_configs/app_paddings/app_paddings.dart';
import 'package:flutter_assignments/common/utils/enums/app_enums.dart';
import 'package:flutter_assignments/domain/entity/responses/app_country.dart';
import 'package:flutter_assignments/domain/entity/responses/app_state.dart';
import 'package:flutter_assignments/presentation/providers/app_provider.dart';
import 'package:flutter_assignments/presentation/widgets/common_widgets/common_appbar/common_appbar.dart';
import 'package:flutter_assignments/presentation/widgets/common_widgets/custom_dropdown/dropdown_item_model.dart';
import 'package:flutter_assignments/presentation/widgets/common_widgets/custom_dropdown/dropdown_model.dart';
import 'package:provider/provider.dart';

import '../../common_widgets/custom_dropdown/custom_dropdown.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  AppCountry? _selectedAppCountry;
  AppState? _selectedAppState;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(title: 'Welcome !!'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Consumer<AppProvider>(
            builder: (context, provider, child) {
              if (provider.countries.isEmpty) {
                return Center(child: CircularProgressIndicator());
              }

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppPaddings.s16,
                    ),
                    child: CustomDropdownButton<AppCountry>(
                      model: DropdownModel(
                        initialSelectedValue: _selectedAppCountry,
                        hintText: 'Select Country',
                        dropdownItemGroups: [
                          DropdownItemGroup(
                            dropdownItems:
                                provider.countries
                                    .map(
                                      (element) =>
                                          DropdownItemModel<AppCountry>(
                                            text: element.value,
                                            value: element,
                                          ),
                                    )
                                    .toList(),
                          ),
                        ],
                      ),
                      onSelect: (value) async {
                        if (_selectedAppCountry != value) {
                          _selectedAppCountry = value;
                          setState(() {});
                        }
                      },
                    ),
                  ),
                ],
              );
            },
          ),
          SizedBox(height: 10),
          if (_selectedAppCountry != null)
            _AppStateSelection(
              selectedCountryId: _selectedAppCountry!.id,
              initialSelection: _selectedAppState,
              onSelectedStates: (appState) {
                if (_selectedAppState != appState) {
                  _selectedAppState = appState;
                  setState(() {});
                }
              },
            ),
        ],
      ),
    );
  }
}

class _AppStateSelection extends StatelessWidget {
  final void Function(AppState) onSelectedStates;
  final int selectedCountryId;
  final AppState? initialSelection;

  const _AppStateSelection({
    required this.selectedCountryId,
    required this.onSelectedStates,
    this.initialSelection,
  });

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context, listen: false);
    return FutureBuilder(
      future: appProvider.fetchStateList(selectedCountryId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (appProvider.state == UserState.loaded &&
            appProvider.appStates.isNotEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPaddings.s16,
                ),
                child: CustomDropdownButton<AppState>(
                  model: DropdownModel(
                    initialSelectedValue: initialSelection,
                    hintText: 'Select States',
                    dropdownItemGroups: [
                      DropdownItemGroup(
                        dropdownItems:
                            appProvider.appStates
                                .map(
                                  (element) => DropdownItemModel<AppState>(
                                    text: element.value,
                                    value: element,
                                  ),
                                )
                                .toList(),
                      ),
                    ],
                  ),
                  onSelect: (value) async {
                    onSelectedStates.call(value);
                  },
                ),
              ),
            ],
          );
        } else {
          return Text("Welcome", style: AppFonts.medium());
        }
      },
    );
  }
}
