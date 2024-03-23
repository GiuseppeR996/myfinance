import 'package:flutter/material.dart';

class AppSettings {
  Color backgroundColor;
  String backendUrl;

  AppSettings({required this.backgroundColor, required this.backendUrl});
}
class AppSettingsService {
  static final AppSettingsService _instance = AppSettingsService._internal();

  factory AppSettingsService() {
    return _instance;
  }

  AppSettingsService._internal();

  AppSettings appSettings = AppSettings(
    backgroundColor: Colors.white, // Impostazioni predefinite
    backendUrl: 'https://example.com', // Impostazioni predefinite
  );
}
class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final AppSettingsService _appSettingsService = AppSettingsService();

  TextEditingController _backendUrlController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  _loadSettings() {
    _backendUrlController.text = _appSettingsService.appSettings.backendUrl;
  }

  _saveSettings() {
    _appSettingsService.appSettings.backendUrl = _backendUrlController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Impostazioni Backend'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _backendUrlController,
              decoration: InputDecoration(labelText: 'URL Backend'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _saveSettings();
                Navigator.pop(context);
              },
              child: Text('Salva'),
            ),
          ],
        ),
      ),
    );
  }
}
