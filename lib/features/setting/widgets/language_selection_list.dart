// language_selection_list.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'language_list_item.dart'; // Make sure to import the item widget

class LanguageSelectionList extends StatefulWidget {
  final List<String> languages;
  final String initialSelectedLanguage;
  final ValueChanged<String> onLanguageSelected;

  const LanguageSelectionList({
    Key? key,
    required this.languages,
    required this.initialSelectedLanguage,
    required this.onLanguageSelected,
  }) : super(key: key);

  @override
  _LanguageSelectionListState createState() => _LanguageSelectionListState();
}

class _LanguageSelectionListState extends State<LanguageSelectionList> {
  late String _selectedLanguage;

  @override
  void initState() {
    super.initState();
    _selectedLanguage = widget.initialSelectedLanguage;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Languages',
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 5.h),
        ...widget.languages.map((language) {
          return LanguageListItem(
            languageName: language,
            isSelected: _selectedLanguage == language,
            onTap: () {
              setState(() {
                _selectedLanguage = language;
              });
              widget.onLanguageSelected(language);
            },
          );
        }).toList(),
      ],
    );
  }
}