import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_assignments/presentation/widgets/screens/onboading_screen/onboarding_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:flutter_assignments/presentation/providers/app_provider.dart';
import 'package:flutter_assignments/presentation/providers/theme_provider.dart';
import 'common/routes/app_routes.dart';
import 'data/usecase/app_usecase.dart';
import 'dependency_injection.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    if (kDebugMode) {
      print("Firebase initialization error: $e");
    }
  }
  setupLocator();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppProvider(getAppUseCase: getIt<AppUseCase>()),
        ),
        ChangeNotifierProvider(
          create: (_) {
            final darkModeProvider = ThemeProvider();
            darkModeProvider.loadDarkModeState();
            return darkModeProvider;
          },
        ), //
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const OnboardingScreen(),
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
