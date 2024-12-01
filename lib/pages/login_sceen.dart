import 'package:flutter/material.dart';
import 'package:world_explorer/pages/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return BuildMobileLayout(context: context);
          } else {
            // return _buildTabletLayout();
            return BuildWebLayout(context: context);
          }
        },
      ),
    );
  }
}

class BuildMobileLayout extends StatefulWidget {
  final BuildContext context;

  const BuildMobileLayout({super.key, required this.context});

  @override
  // ignore: library_private_types_in_public_api
  _BuildMobileLayout createState() => _BuildMobileLayout();
}

class _BuildMobileLayout extends State<BuildMobileLayout> {
  snackBarComingSoon(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Commig soon', textAlign: TextAlign.center),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  final TextEditingController controller = TextEditingController();

  String name = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg_initial.jpg'),
            fit: BoxFit.cover,
            opacity: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'World Explorer',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 45,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Image.asset('images/bg_login.png',
                    //         width: 300, height: 300),
                    //   ],
                    // ),
                    // const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Text(
                            '"Travel Far, Dream Big, Explore More"',
                            style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Before we dive into the adventure, how about a quick introduction? What’s your name?',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: controller,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    Colors.blueAccent, // background
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  name = controller.text;
                                });
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainScreen(name);
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                "Let's Start Exploring",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BuildWebLayout extends StatefulWidget {
  final BuildContext context;

  const BuildWebLayout({super.key, required this.context});

  @override
  // ignore: library_private_types_in_public_api
  _BuildTabletLayout createState() => _BuildTabletLayout();
}

class _BuildTabletLayout extends State<BuildWebLayout> {
  snackBarComingSoon(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Commig soon', textAlign: TextAlign.center),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  final TextEditingController controller = TextEditingController();

  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg_initial.jpg'),
                  fit: BoxFit.cover,
                  opacity: 1,
                ),
              ),
            ),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'World Explorer',
                                  style: GoogleFonts.quicksand(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 45,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //     Image.asset('images/bg_login.png',
                            //         width: 300, height: 300),
                            //   ],
                            // ),
                            // const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                  child: Text(
                                    '"Travel Far, Dream Big, Explore More"',
                                    style: GoogleFonts.quicksand(
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 17,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Before we dive into the adventure, how about a quick introduction? What’s your name?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    decoration: InputDecoration(
                                      labelText: 'Name',
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor:
                                            Colors.blueAccent, // background
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return MainScreen(name);
                                            },
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "Let's Start Exploring",
                                        style: TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
