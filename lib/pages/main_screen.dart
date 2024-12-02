import 'package:flutter/material.dart';
import 'package:world_explorer/model/world_explore_place.dart';
import 'package:world_explorer/pages/detail_screen.dart';

class MainScreen extends StatelessWidget {
  final String name;

  const MainScreen(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 230, 230),
        appBar: AppBar(
          title: Text(
            'Hello${name != '' ? ' $name' : ' Explorer'}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return const ListViewItem();
            } else if (constraints.maxWidth <= 900) {
              return const GridViewItem(
                gridCount: 3,
                fontSizeName: 13,
                fonrSizeLocation: 9,
              );
            } else if (constraints.maxWidth <= 1200) {
              return const GridViewItem(
                gridCount: 4,
                fontSizeName: 15,
                fonrSizeLocation: 11,
              );
            } else {
              return const GridViewItem(
                gridCount: 5,
                fontSizeName: 17,
                fonrSizeLocation: 13,
              );
            }
          },
        ));
  }
}

class ListViewItem extends StatefulWidget {
  const ListViewItem({super.key});

  @override
  State<ListViewItem> createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  final _scrollController = ScrollController();

  snackBarComingSoon(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Commig soon', textAlign: TextAlign.center),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
              child: Text(
                'Popular Places',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              child: const Text('View All'),
              onPressed: () {
                snackBarComingSoon(context);
              },
            ),
          ],
        ),
        SizedBox(
          height: 200,
          child: Scrollbar(
            controller: _scrollController,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final WorldExplorePlace place =
                    populerWoeldExplorePlacesList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(place: place),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 5,
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              place.assetsImages,
                              fit: BoxFit.cover,
                              width: 300,
                              height: 200,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              child: Container(
                                color: Colors.black
                                    .withOpacity(0.5), // Transparent background
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      place.name,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on,
                                          color: Color.fromARGB(
                                              255, 216, 216, 216),
                                          size: 16,
                                        ),
                                        Expanded(
                                          child: Text(
                                            place.location,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Color.fromARGB(
                                                  255, 216, 216, 216),
                                            ),
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: populerWoeldExplorePlacesList.length,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
              child: Text(
                'Recomendation for you',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              child: const Text('View All'),
              onPressed: () {
                snackBarComingSoon(context);
              },
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              final WorldExplorePlace place = worldExplorePlacesList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(place: place),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                place.assetsImages,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  place.name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Color.fromARGB(255, 116, 116, 116),
                                      size: 16,
                                    ),
                                    Expanded(
                                      child: Text(
                                        place.location,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              255, 116, 116, 116),
                                        ),
                                        softWrap: true,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: worldExplorePlacesList.length,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class GridViewItem extends StatelessWidget {
  final int gridCount;
  final double fontSizeName;
  final double fonrSizeLocation;

  snackBarComingSoon(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Commig soon', textAlign: TextAlign.center),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  const GridViewItem(
      {super.key,
      required this.gridCount,
      required this.fontSizeName,
      required this.fonrSizeLocation});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
              child: Text(
                'Popular Places',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              child: const Text('View All'),
              onPressed: () {
                snackBarComingSoon(context);
              },
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: gridCount,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children: populerWoeldExplorePlacesList.map((place) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(place: place),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  place.assetsImages,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                place.name,
                                style: TextStyle(
                                  fontSize: fontSizeName,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Color.fromARGB(255, 116, 116, 116),
                                    size: 16,
                                  ),
                                  Expanded(
                                    child: Text(
                                      place.location,
                                      style: TextStyle(
                                        fontSize: fonrSizeLocation,
                                        color: const Color.fromARGB(
                                            255, 116, 116, 116),
                                      ),
                                      softWrap: true,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
              child: Text(
                'Recomendation for you',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              child: const Text('View All'),
              onPressed: () {
                snackBarComingSoon(context);
              },
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: gridCount,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children: worldExplorePlacesList.map((place) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(place: place),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  place.assetsImages,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                place.name,
                                style: TextStyle(
                                  fontSize: fontSizeName,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Color.fromARGB(255, 116, 116, 116),
                                    size: 16,
                                  ),
                                  Expanded(
                                    child: Text(
                                      place.location,
                                      style: TextStyle(
                                        fontSize: fonrSizeLocation,
                                        color: const Color.fromARGB(
                                            255, 116, 116, 116),
                                      ),
                                      softWrap: true,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
