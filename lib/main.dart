import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:pff/layouts/remoted_layout.dart';
import 'package:pff/themes/default_theme.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const PfApp());
}

class PfApp extends StatelessWidget {
  const PfApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: DefaultTheme().getAppTheme(),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Pavel Urx'),
            ),
            body: FutureBuilder<FirebaseRemoteConfig>(
              future: setupRemoteConfig(),
              builder: (BuildContext context,
                  AsyncSnapshot<FirebaseRemoteConfig> snapshot) {
                return snapshot.hasData
                    ? RemotedLayout(
                        remoteConfig: snapshot.requireData,
                      )
                    : Center(child: Text(snapshot.error.toString()));
              },
            )));
  }

  Future<FirebaseRemoteConfig> setupRemoteConfig() async {
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(seconds: 10)));
    await remoteConfig.fetchAndActivate();
    return remoteConfig;
  }
}
