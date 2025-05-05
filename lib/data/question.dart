import 'package:adv_basics/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),

  // ✅ Additional Flutter fundamentals questions
  QuizQuestion(
    'What is the purpose of the "build()" method in a widget?',
    [
      'It describes how to display the widget in terms of other widgets',
      'It returns the app\'s state',
      'It handles user input logic',
      'It manages the widget lifecycle',
    ],
  ),
  QuizQuestion(
    'What does the "hot reload" feature in Flutter do?',
    [
      'Injects updated source code into the running Dart VM',
      'Rebuilds the entire app from scratch',
      'Restarts the device emulator',
      'Deletes cache files and recompiles the app',
    ],
  ),
  QuizQuestion(
    'What is a key difference between Hot Reload and Hot Restart?',
    [
      'Hot Reload preserves app state, Hot Restart doesn’t',
      'Hot Restart is faster than Hot Reload',
      'Hot Reload recompiles the entire app',
      'Hot Restart only updates widgets',
    ],
  ),
  QuizQuestion(
    'What is the "pubspec.yaml" file used for?',
    [
      'Managing dependencies and app metadata',
      'Styling the application',
      'Rendering widgets',
      'Debugging app performance',
    ],
  ),
  QuizQuestion(
    'Which folder typically contains image and font assets?',
    [
      'assets/',
      'lib/',
      'bin/',
      'src/',
    ],
  ),
  QuizQuestion(
    'What widget is commonly used to layout children vertically?',
    [
      'Column',
      'Row',
      'Stack',
      'ListView',
    ],
  ),
  QuizQuestion(
    'Which widget helps to add scrollability to a set of children?',
    [
      'SingleChildScrollView',
      'Expanded',
      'Container',
      'Center',
    ],
  ),
  QuizQuestion(
    'What does the Expanded widget do inside a Column or Row?',
    [
      'Takes up remaining free space',
      'Wraps content to fit tightly',
      'Ignores alignment settings',
      'Disables scrolling',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the initState() method in StatefulWidgets?',
    [
      'To perform one-time initialization',
      'To clean up resources',
      'To build the UI',
      'To handle UI animations',
    ],
  ),
  QuizQuestion(
    'Which method is called when a StatefulWidget is permanently removed?',
    [
      'dispose()',
      'remove()',
      'unmount()',
      'terminate()',
    ],
  ),
   QuizQuestion(
    'What is the use of the MaterialApp widget?',
    [
      'It sets up routing, themes, and other app-wide settings',
      'It defines the home screen layout',
      'It handles only navigation between pages',
      'It controls animation behaviors globally',
    ],
  ),
  QuizQuestion(
    'Which widget is used to navigate to a new screen in Flutter?',
    [
      'Navigator.push()',
      'MaterialPageRoute()',
      'Scaffold()',
      'RouteBuilder()',
    ],
  ),
  QuizQuestion(
    'Which widget allows overlaying multiple widgets on top of each other?',
    [
      'Stack',
      'Column',
      'Align',
      'Wrap',
    ],
  ),
  QuizQuestion(
    'What is the role of the Scaffold widget in Flutter?',
    [
      'It provides a default app layout structure like AppBar, Drawer, etc.',
      'It initializes the Flutter engine',
      'It handles HTTP requests',
      'It creates responsive layouts for mobile and desktop',
    ],
  ),
];
