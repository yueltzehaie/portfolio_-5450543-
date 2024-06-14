import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
          headlineMedium: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
          bodyLarge: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
          bodyMedium: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Startseite(),
        '/ueber': (context) => UeberMichSeite(),
        '/lebenslauf': (context) => LebenslaufSeite(),
        '/faehigkeiten': (context) => FaehigkeitenSeite(),
        '/projekte': (context) => ProjekteSeite(),
        '/kontakt': (context) => KontaktSeite(),
      },
    );
  }
}

class Startseite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Willkommen in meinem Portfolio'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Text(
            'Willkommen in meinem Portfolio',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: Footer(),
    );
  }
}

class UeberMichSeite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Über mich'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Über mich',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Yuel Sirak Tzehaie',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Wirtschaftsinformatik-Student',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Hallo! Mein Name ist Yuel Sirak Tzehaie und ich studiere Wirtschaftsinformatik im 4. Semester an der Technischen Hochschule Mittelhessen in Friedberg. Meine Leidenschaft für Technik und Wirtschaft hat mich zu diesem Studiengang geführt.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Ich habe meine erste Webseite mit Flutter erstellt und bin begeistert von den Möglichkeiten, die diese Technologie bietet. Meine Interessen erstrecken sich über die Programmierung hinaus. Ich interessiere mich für IT-Sicherheit, Datenanalyse und die Entwicklung von innovativen Lösungen für komplexe Probleme.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'In meiner Freizeit lese ich gerne über die neuesten Entwicklungen in der IT-Branche und arbeite an persönlichen Projekten, um mein Wissen und meine Fähigkeiten kontinuierlich zu erweitern.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Meine Motivation ist es, mein Wissen kontinuierlich zu erweitern und meine Fähigkeiten in realen Projekten anzuwenden. Ich freue mich darauf, meine berufliche Laufbahn im Bereich Wirtschaftsinformatik weiter voranzutreiben und spannende Herausforderungen zu meistern.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: Footer(),
    );
  }
}

class LebenslaufSeite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lebenslauf'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle('Akademischer Werdegang'),
              _buildTimelineTile(
                title: 'Oktober 2022 - laufend',
                subtitle:
                'Bachelorstudium Wirtschaftsinformatik an der Technischen Hochschule Mittelhessen, Campus Friedberg\nAbschluss voraussichtlich: 2026\nSpezialisierung: IT-Sicherheit',
              ),
              _buildTimelineTile(
                title: 'August 2020 - Juni 2022',
                subtitle: 'Interkulturelle Schule Rhein Main, Frankfurt am Main\nAbschluss: Fach Abitur',
              ),
              SizedBox(height: 20),
              _buildSectionTitle('Beruflicher Werdegang'),
              _buildTimelineTile(
                title: 'Februar 2024 - aktuell',
                subtitle:
                'Werkstudent im Archiv und Datenerfasser bei der Stadtversammlung Frankfurt am Main\nBearbeitung und Archivierung von Akten im Stadtarchiv\nDigitalisierung und Pflege der digitalen Datenbanken\nUnterstützung bei Recherchen und administrativen Aufgaben',
              ),
              _buildTimelineTile(
                title: 'Oktober 2023 - Dezember 2023',
                subtitle:
                'Minijob als Servicespezialist Reisenden Lenker der Rhein-main-Verkehrsverbund, Hessen\nRepräsentation der RMV und Sicherstellung der Kundenzufriedenheit\nInformationsweitergabe zu Gleisänderungen, Störungen, Zugausfällen und Reisealternativen\nUnterstützung mobilitätseingeschränkter Personen und Übernahme von Ersthelfertätigkeiten',
              ),
              SizedBox(height: 20),
              _buildSectionTitle('Sprachkenntnisse'),
              _buildLanguageTile('Deutsch (Muttersprache)'),
              _buildLanguageTile('Tigrinya (fließend)'),
              _buildLanguageTile('Englisch (verhandlungssicher)'),
            ],
          ),
        ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: Footer(),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildTimelineTile({required String title, required String subtitle}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 16, color: Colors.black54),
        ),
      ),
    );
  }

  Widget _buildLanguageTile(String language) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        title: Text(
          language,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class FaehigkeitenSeite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fähigkeiten'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSkillTile(
                skill: 'Java',
                description: 'Erfahrung in objektorientierter Programmierung und Entwicklung von Anwendungen.',
                icon: Icons.code,
              ),
              _buildSkillTile(
                skill: 'Dart',
                description: 'Kompetenz in der Entwicklung mit Dart und Flutter.',
                icon: Icons.developer_mode,
              ),
              _buildSkillTile(
                skill: 'HTML & CSS',
                description: 'Erfahrung in der Erstellung von Webseiten mit HTML und CSS.',
                icon: Icons.web,
              ),
              _buildSkillTile(
                skill: 'JavaScript',
                description: 'Erfahrung in der Entwicklung interaktiver Webanwendungen.',
                icon: Icons.web,
              ),
              _buildSkillTile(
                skill: 'Flutter',
                description: 'Erfahrung in der Entwicklung von plattformübergreifenden mobilen und Webanwendungen.',
                icon: Icons.mobile_friendly,
              ),
              _buildSkillTile(
                skill: 'VSCode & Eclipse',
                description: 'Vertraut mit den Entwicklungsumgebungen für die Softwareentwicklung.',
                icon: Icons.developer_mode,
              ),
              _buildSkillTile(
                skill: 'MySQL',
                description: 'Erfahrung in der Verwaltung und Abfrage von relationalen Datenbanken.',
                icon: Icons.storage,
              ),
              _buildSkillTile(
                skill: 'Windows',
                description: 'Kompetenz in der Nutzung und Verwaltung von Windows-Betriebssystemen.',
                icon: Icons.computer,
              ),
            ],
          ),
        ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: Footer(),
    );
  }

  Widget _buildSkillTile({
    required String skill,
    required String description,
    required IconData icon,
  }) {
    return Card(
      elevation: 8,
      shadowColor: Colors.indigo,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.indigo, size: 40),
        title: Text(
          skill,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          description,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

class ProjekteSeite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projekte'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Hier könnten Ihre Projekte vorgestellt werden.',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: Footer(),
    );
  }
}

class KontaktSeite extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontakt'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _messageController,
              decoration: InputDecoration(
                labelText: 'Nachricht',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle send action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
              ),
              child: Text('Versenden', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: Footer(),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.grey, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  child: Text(
                    'Y',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Yuel Sirak Tzehaie',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Startseite'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Über mich'),
            onTap: () {
              Navigator.pushNamed(context, '/ueber');
            },
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Lebenslauf'),
            onTap: () {
              Navigator.pushNamed(context, '/lebenslauf');
            },
          ),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Fähigkeiten'),
            onTap: () {
              Navigator.pushNamed(context, '/faehigkeiten');
            },
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Projekte'),
            onTap: () {
              Navigator.pushNamed(context, '/projekte');
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Kontakt'),
            onTap: () {
              Navigator.pushNamed(context, '/kontakt');
            },
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '© 2024 Yuel Sirak Tzehaie',
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
