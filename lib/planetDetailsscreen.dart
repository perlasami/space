import 'package:flutter/material.dart';

import '3dmodel.dart';
import 'detailswidget.dart';

class Planetdetailsscreen extends StatelessWidget {
  const Planetdetailsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String name =
        (ModalRoute.of(context)?.settings.arguments as String?) ?? 'Earth';

    Widget detailContent;

    if (name == 'Sun') {
      detailContent = Detailswidget(
        name: "Sun",
        title: "The Sun: Our Solar System's Star",
        details:
        "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
        distance: "0",
        hours: 0,
        orbitalPeriod: 0,
        radius: 695700,
        mass: "1.989 × 10³⁰",
        gravity: 27,
        area: "6.09 × 10¹²",
      );
    } else if (name == 'Mercury') {
      detailContent = Detailswidget(
        name: "Mercury",
        title: "Mercury: The Closest Planet",
        details:
        "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
        distance: "57,909,227",
        hours: 1407.60,
        orbitalPeriod: 0.24,
        radius: 2439.70,
        mass: "3.301 × 10²³",
        gravity: 3.7,
        area: "7.48 × 10⁷",
      );
    } else if (name == 'Venus') {
      detailContent = Detailswidget(
        name: "Venus",
        title: "Venus: Earth's Toxic Twin",
        details:
        "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
        distance: "108,209,072",
        hours: 5832.20,
        orbitalPeriod: 0.62,
        radius: 6051.80,
        mass: "4.867 × 10²⁴",
        gravity: 8.87,
        area: "4.60 × 10⁸",
      );
    } else if (name == 'Earth') {
      detailContent = Detailswidget(
        name: "Earth",
        title: "Earth: Our Blue Marble",
        details:
        "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
        distance: "149,598,026",
        hours: 23.93,
        orbitalPeriod: 1,
        radius: 6371,
        mass: "5.972 × 10²⁴",
        gravity: 9.81,
        area: "5.10 × 10⁸",
      );
    } else if (name == 'Mars') {
      detailContent = Detailswidget(
        name: "Mars",
        title: "Mars: The Red Planet",
        details:
        "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
        distance: "227,943,824",
        hours: 24.62,
        orbitalPeriod: 1.88,
        radius: 3389.50,
        mass: "6.39 × 10²³",
        gravity: 3.71,
        area: "1.45 × 10⁸",
      );
    } else if (name == 'Jupiter') {
      detailContent = Detailswidget(
        name: "Jupiter",
        title: "Jupiter: The Gas Giant",
        details:
        "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
        distance: "778,547,669",
        hours: 9.92,
        orbitalPeriod: 11.86,
        radius: 69911,
        mass: "1.898 × 10²⁷",
        gravity: 24.79,
        area: "6.21 × 10¹⁵",
      );
    } else if (name == 'Saturn') {
      detailContent = Detailswidget(
        name: "Saturn",
        title: "Saturn: The Ringed Planet",
        details:
        "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
        distance: "1,426,666,422",
        hours: 10.66,
        orbitalPeriod: 29.46,
        radius: 58232,
        mass: "5.683 × 10²⁶",
        gravity: 10.44,
        area: "4.27 × 10¹⁵",
      );
    } else if (name == 'Uranus') {
      detailContent = Detailswidget(
        name: "Uranus",
        title: "Uranus: The Tilted Planet",
        details:
        "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
        distance: "2,870,990,000",
        hours: 17.24,
        orbitalPeriod: 84.01,
        radius: 25362,
        mass: "8.681 × 10²⁵",
        gravity: 8.69,
        area: "8.1 × 10¹⁵",
      );
    } else {
      detailContent = Detailswidget(
        name: "Neptune",
        title: "Neptune: The Distant World",
        details:
        "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
        distance: "4,498,252,900",
        hours: 16.11,
        orbitalPeriod: 164.8,
        radius: 24622,
        mass: "1.024 × 10²⁶",
        gravity: 11.15,
        area: "7.65 × 10¹⁵",
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Planet Details.png",
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: detailContent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}