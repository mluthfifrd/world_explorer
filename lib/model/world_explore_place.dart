class WorldExplorePlace {
  String name;
  String description;
  String country;
  String city;
  String location;
  String assetsImages;
  List<String> images;

  WorldExplorePlace({
    required this.name,
    required this.description,
    required this.country,
    required this.city,
    required this.location,
    required this.assetsImages,
    required this.images,
  });
}

var worldExplorePlacesList = [
  WorldExplorePlace(
    name: 'Bled Castle',
    description:
        'Bled Castle is a medieval castle built on a precipice above the city of Bled in Slovenia, overlooking Lake Bled. According to written sources, it is the oldest Slovenian castle and is currently one of the most visited tourist attractions in Slovenia. Perched atop a steep cliff rising 130 metres above the glacial Lake Bled is a symbol of Bled and Slovenia. The castle is mentioned for the first time in a 22 May 1011 deed of donation issued by Emperor Henry II in favour of the Bishops of Brixen. Then located in the March of Carniola, it passed to the Austrian House of Habsburg in 1278. The oldest part of the castle is the Romanesque tower.',
    country: 'Slovenia',
    city: 'Bled',
    location: 'Bled, Slovenia',
    assetsImages: 'images/bled_castle_1.jpg',
    images: [
      'images/bled_castle_1.jpg',
      'images/bled_castle_2.jpg',
      'images/bled_castle_3.jpg',
      'images/bled_castle_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Hallstatt',
    description:
        'Hallstatt is a small town in the district of Gmunden, in the Austrian state of Upper Austria. It is located near the Hallstätter See. At the 2001 census, it had 946 inhabitants. Alexander Scheutz has been mayor of Hallstatt since 2009. Hallstatt is known for its production of salt, dating back to prehistoric times, and gave its name to the Hallstatt culture, the archaeological culture linked to Proto-Celtic and early Celtic people of the Early Iron Age in Europe, c.800–450 BC. Some of the earliest archaeological evidence for the Celts was found in Hallstatt.',
    country: 'Austria',
    city: 'Hallstatt',
    location: 'Hallstatt, Austria',
    assetsImages: 'images/hallstatt_1.jpg',
    images: [
      'images/hallstatt_1.jpg',
      'images/hallstatt_2.jpg',
      'images/hallstatt_3.jpg',
      'images/hallstatt_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Colmar',
    description:
        'Colmar is a town in the Grand Est region of northeastern France, near the border with Germany.',
    country: 'France',
    city: 'Colmar',
    location: 'Colmar, France',
    assetsImages: 'images/colmar_1.jpg',
    images: [
      'images/colmar_1.jpg',
      'images/colmar_2.jpg',
      'images/colmar_3.jpg',
      'images/colmar_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Giethoorn',
    description:
        'Giethoorn is a peaceful village in the Dutch province of Overijssel, known for its boat-filled waterways. It is nicknamed the "Venice of the North" for its picturesque canals and unique thatched-roof farmhouses. The village was founded around 1230.',
    country: 'Netherlands',
    city: 'Giethoorn',
    location: 'Giethoorn, Netherlands',
    assetsImages: 'images/giethoorn_1.jpg',
    images: [
      'images/giethoorn_1.jpg',
      'images/giethoorn_2.jpg',
      'images/giethoorn_3.jpg',
      'images/giethoorn_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Albarracín',
    description:
        'Albarracín is a small town in the province of Teruel, part of the autonomous community of Aragon, Spain. The town is located on a hill on the right bank of the Guadalaviar River, in the Sierra de Albarracín mountain range. Albarracín is surrounded by stately walls and towers, making the town a picturesque site. The town was named a Monumento Nacional in 1961.',
    country: 'Spain',
    city: 'Albarracín',
    location: 'Albarracín, Spain',
    assetsImages: 'images/albarracin_1.jpg',
    images: [
      'images/albarracin_1.jpg',
      'images/albarracin_2.jpg',
      'images/albarracin_3.jpg',
      'images/albarracin_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Reine',
    description:
        'Reine is a picturesque fishing village on the island of Moskenesøya in the Lofoten archipelago, Norway. It is located by the sea and surrounded by mountains. Reine is known for its scenic beauty and is a popular destination for tourists. The village has a population of around 300 people. Reine is located within the Arctic Circle. The village is a popular starting point for hiking and fishing trips in the Lofoten Islands.',
    country: 'Norway',
    city: 'Reine',
    location: 'Reine, Norway',
    assetsImages: 'images/reine_1.jpg',
    images: [
      'images/reine_1.jpg',
      'images/reine_2.jpg',
      'images/reine_3.jpg',
      'images/reine_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Rothenburg ob der Tauber',
    description:
        'Rothenburg ob der Tauber is a well-preserved medieval town in the Franconia region of Bavaria, Germany. It is known for its well-preserved medieval old town, which is a popular tourist destination. The town is surrounded by a city wall and has many half-timbered houses and cobblestone streets. Rothenburg ob der Tauber is located on the Romantic Road, a popular tourist route in southern Germany. The town is known for its Christmas market and is a popular destination for tourists.',
    country: 'Germany',
    city: 'Rothenburg ob der Tauber',
    location: 'Rothenburg ob der Tauber, Germany',
    assetsImages: 'images/rothenburg_1.jpg',
    images: [
      'images/rothenburg_1.jpg',
      'images/rothenburg_2.jpg',
      'images/rothenburg_3.jpg',
      'images/rothenburg_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Castelluccio di Norcia',
    description:
        'Castelluccio di Norcia is a small village in the Monti Sibillini National Park, known for its beautiful flower fields. The village is located in the Umbria region of Italy. Castelluccio is known for its lentils, which are grown in the surrounding fields. The village is located at an altitude of 1,452 meters (4,764 feet) and is surrounded by mountains. Castelluccio is a popular destination for hikers and nature lovers. The village is located near the Piano Grande, a large plateau known for its wildflowers.',
    country: 'Italy',
    city: 'Norcia',
    location: 'Castelluccio, Umbria, Italy',
    assetsImages: 'images/castelluccio_1.jpg',
    images: [
      'images/castelluccio_1.jpg',
      'images/castelluccio_2.jpg',
      'images/castelluccio_3.jpg',
      'images/castelluccio_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Sintra',
    description:
        'Sintra is a picturesque town in the foothills of the Sintra Mountains, near the capital, Lisbon. The town is known for its historic buildings and beautiful scenery. Sintra is a popular tourist destination and is a UNESCO World Heritage Site. The town is home to several palaces, castles, and gardens, including the Pena Palace, the Moorish Castle, and the Quinta da Regaleira. Sintra is located in the Sintra-Cascais Natural Park, which is known for its lush vegetation and scenic views. The town is a popular destination for day trips from Lisbon.',
    country: 'Portugal',
    city: 'Sintra',
    location: 'Sintra, Portugal',
    assetsImages: 'images/sintra_1.jpg',
    images: [
      'images/sintra_1.jpg',
      'images/sintra_2.jpg',
      'images/sintra_3.jpg',
      'images/sintra_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Cesky Krumlov',
    description:
        'Cesky Krumlov is a small city in the South Bohemian Region of the Czech Republic, known for its historic architecture. The city is located on the Vltava River and is a popular tourist destination. Cesky Krumlov is a UNESCO World Heritage Site and is known for its well-preserved medieval old town. The city is home to Cesky Krumlov Castle, a large castle complex that dates back to the 13th century. The castle is located on a hill overlooking the city and is a popular tourist attraction. Cesky Krumlov is also known for its Baroque and Renaissance architecture, including the Church of St. Vitus and the Egon Schiele Art Centrum. The city is a popular destination for day trips from Prague.',
    country: 'Czech Republic',
    city: 'Cesky Krumlov',
    location: 'Cesky Krumlov, Czech Republic',
    assetsImages: 'images/cesky_krumlov_1.jpg',
    images: [
      'images/cesky_krumlov_1.jpg',
      'images/cesky_krumlov_2.jpg',
      'images/cesky_krumlov_3.jpg',
      'images/cesky_krumlov_4.jpg',
    ],
  ),
];

var populerWoeldExplorePlacesList = [
  WorldExplorePlace(
    name: 'Hallstatt',
    description:
        'Hallstatt is a small town in the district of Gmunden, in the Austrian state of Upper Austria. It is located near the Hallstätter See. At the 2001 census, it had 946 inhabitants. Alexander Scheutz has been mayor of Hallstatt since 2009. Hallstatt is known for its production of salt, dating back to prehistoric times, and gave its name to the Hallstatt culture, the archaeological culture linked to Proto-Celtic and early Celtic people of the Early Iron Age in Europe, c.800–450 BC. Some of the earliest archaeological evidence for the Celts was found in Hallstatt.',
    country: 'Austria',
    city: 'Hallstatt',
    location: 'Hallstatt, Austria',
    assetsImages: 'images/hallstatt_1.jpg',
    images: [
      'images/hallstatt_1.jpg',
      'images/hallstatt_2.jpg',
      'images/hallstatt_3.jpg',
      'images/hallstatt_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Albarracín',
    description:
        'Albarracín is a small town in the province of Teruel, part of the autonomous community of Aragon, Spain. The town is located on a hill on the right bank of the Guadalaviar River, in the Sierra de Albarracín mountain range. Albarracín is surrounded by stately walls and towers, making the town a picturesque site. The town was named a Monumento Nacional in 1961.',
    country: 'Spain',
    city: 'Albarracín',
    location: 'Albarracín, Spain',
    assetsImages: 'images/albarracin_1.jpg',
    images: [
      'images/albarracin_1.jpg',
      'images/albarracin_2.jpg',
      'images/albarracin_3.jpg',
      'images/albarracin_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Rothenburg ob der Tauber',
    description:
        'Rothenburg ob der Tauber is a well-preserved medieval town in the Franconia region of Bavaria, Germany. It is known for its well-preserved medieval old town, which is a popular tourist destination. The town is surrounded by a city wall and has many half-timbered houses and cobblestone streets. Rothenburg ob der Tauber is located on the Romantic Road, a popular tourist route in southern Germany. The town is known for its Christmas market and is a popular destination for tourists.',
    country: 'Germany',
    city: 'Rothenburg ob der Tauber',
    location: 'Rothenburg ob der Tauber, Germany',
    assetsImages: 'images/rothenburg_1.jpg',
    images: [
      'images/rothenburg_1.jpg',
      'images/rothenburg_2.jpg',
      'images/rothenburg_3.jpg',
      'images/rothenburg_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Castelluccio di Norcia',
    description:
        'Castelluccio di Norcia is a small village in the Monti Sibillini National Park, known for its beautiful flower fields. The village is located in the Umbria region of Italy. Castelluccio is known for its lentils, which are grown in the surrounding fields. The village is located at an altitude of 1,452 meters (4,764 feet) and is surrounded by mountains. Castelluccio is a popular destination for hikers and nature lovers. The village is located near the Piano Grande, a large plateau known for its wildflowers.',
    country: 'Italy',
    city: 'Norcia',
    location: 'Castelluccio, Umbria, Italy',
    assetsImages: 'images/castelluccio_1.jpg',
    images: [
      'images/castelluccio_1.jpg',
      'images/castelluccio_2.jpg',
      'images/castelluccio_3.jpg',
      'images/castelluccio_4.jpg',
    ],
  ),
  WorldExplorePlace(
    name: 'Cesky Krumlov',
    description:
        'Cesky Krumlov is a small city in the South Bohemian Region of the Czech Republic, known for its historic architecture. The city is located on the Vltava River and is a popular tourist destination. Cesky Krumlov is a UNESCO World Heritage Site and is known for its well-preserved medieval old town. The city is home to Cesky Krumlov Castle, a large castle complex that dates back to the 13th century. The castle is located on a hill overlooking the city and is a popular tourist attraction. Cesky Krumlov is also known for its Baroque and Renaissance architecture, including the Church of St. Vitus and the Egon Schiele Art Centrum. The city is a popular destination for day trips from Prague.',
    country: 'Czech Republic',
    city: 'Cesky Krumlov',
    location: 'Cesky Krumlov, Czech Republic',
    assetsImages: 'images/cesky_krumlov_1.jpg',
    images: [
      'images/cesky_krumlov_1.jpg',
      'images/cesky_krumlov_2.jpg',
      'images/cesky_krumlov_3.jpg',
      'images/cesky_krumlov_4.jpg',
    ],
  ),
];
