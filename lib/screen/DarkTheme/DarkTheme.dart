import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement_course/provider/Theme_Changer_Provider.dart';


class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger=Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Changer"),
      ),
      body: Column(
        children: [
            RadioListTile<ThemeMode>(
              title: Text("Light Mode"),
                value: ThemeMode.light,
                groupValue: themeChanger.themMode,
                onChanged: themeChanger.setTheme
            ),
          RadioListTile<ThemeMode>(
            title: Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themeChanger.themMode,
              onChanged: themeChanger.setTheme,
            
          ),
          Icon(Icons.favorite)
        ],
      ),
    );
  }
}
