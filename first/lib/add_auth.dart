import 'package:aad_oauth/aad_oauth.dart';
import 'package:aad_oauth/model/config.dart';
import 'package:flutter/material.dart';

class AddAuth extends StatefulWidget {
  AddAuth({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AddAuth> {
  static final Config config = Config(
    tenant: 'common',
    clientId: '943c4c61-07bc-4948-8dcc-8525e32b8d65',
    scope: 'openid',
    redirectUri: 'https://login.microsoftonline.com/common/v2.0?',
  );
  final AadOAuth oauth = AadOAuth(config);

  @override
  Widget build(BuildContext context) {
    // adjust window size for browser login
    oauth.setWebViewScreenSizeFromMedia(MediaQuery.of(context));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                'AzureAD OAuth',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            ListTile(
              leading: Icon(Icons.launch),
              title: Text('Login'),
              onTap: () {
                login();
              },
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Logout'),
              onTap: () {
                logout();
              },
            ),
          ],
        ),
      ),
    );
  }

  void showError(dynamic ex) {
    showMessage(ex.toString());
  }

  void showMessage(String text) {
    var alert = AlertDialog(content: Text(text), actions: <Widget>[
      TextButton(
          child: const Text('Ok'),
          onPressed: () {
            Navigator.pop(context);
          })
    ]);
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  void login() async {
    try {
      await oauth.login();
      var accessToken = await oauth.getAccessToken();
      showMessage('Logged in successfully, your access token: $accessToken');
    } catch (e) {
      showError(e);
    }
  }


  void logout() async {
    await oauth.logout();
    showMessage('Logged out');
  }
}