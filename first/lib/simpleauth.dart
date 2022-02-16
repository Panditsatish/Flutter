import 'package:flutter/material.dart';
import 'package:simple_auth/simple_auth.dart' as simpleAuth;
import 'package:simple_auth_flutter/simple_auth_flutter.dart';


class SimpleAuth extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SimpleAuthFlutter.init(context);
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SimpleOAuth(title: 'Flutter Demo Home Page'),
    );
  }
}

class SimpleOAuth extends StatefulWidget {
  SimpleOAuth({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _SimpleOAuthState createState() => new _SimpleOAuthState();
}

class _SimpleOAuthState extends State<SimpleOAuth> {
  int _counter = 0;
  final simpleAuth.GoogleApi googleApi = new simpleAuth.GoogleApi("google",
      "992461286651-k3tsbcreniknqptanrugsetiimt0lkvo.apps.googleusercontent.com",
      "redirecturl",
      clientSecret: "avrYAIxweNZwcHpsBlIzTp04",
      scopes: [
        "https://www.googleapis.com/auth/userinfo.email",
        "https://www.googleapis.com/auth/userinfo.profile"
      ]);

  final  simpleAuth.AzureADApi aruzeApi = new simpleAuth.AzureADApi("azure", "05170137-6ade-4623-a6ee-6cd1a0f6b089",
      "https://login.microsoftonline.com/76cc3a83-d2ab-4a50-9742-cccb9dca2fe0/oauth2/authorize",
      "https://login.microsoftonline.com/76cc3a83-d2ab-4a50-9742-cccb9dca2fe0/oauth2/token",
      "https://management.azure.com/",
      "msauth://com.app.hifives/2jmj7l5rSw0yVb%2FvlWAYkK%2FYBwk%3D");
 /* final simpleAuth.AzureADApi azureApi = new simpleAuth.AzureADApi(
      "azure",
      azureClientId,
      "https://login.microsoftonline.com/$azureTennant/oauth2/authorize",
      "https://login.microsoftonline.com/$azureTennant/oauth2/token",
      "https://management.azure.com/",
      "redirecturl");*/
/*
  tenant: '76cc3a83-d2ab-4a50-9742-cccb9dca2fe0',
  clientId: '05170137-6ade-4623-a6ee-6cd1a0f6b089',
  scope: 'openid',
  redirectUri: 'msauth://com.app.hifives/2jmj7l5rSw0yVb%2FvlWAYkK%2FYBwk%3D',*/

  void _incrementCounter() async {
    //var profile = await googleApi.getUserProfile();
    var profile1 = await aruzeApi.authenticate();
    print(profile1!.userData);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title!),
      ),
      body: new Center(
        child: new Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}