import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.3),
                prefixIcon: Icon(Icons.search_outlined),
                suffixIcon: Icon(Icons.mic),
                labelText: 'Search',
              ),
            ),

            // Space
            const SizedBox(
              height: 20.0,
            ),

            // Container
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1k13X3e1YtvU9qu2z14nBhPQPQTKrtl4CAQ&s',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Space
            const SizedBox(
              height: 20.0,
            ),

            // Text
            const Text(
              'Stories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),

            // Space
            const SizedBox(
              height: 20.0,
            ),

            // Container
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                // color: Colors.green,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ListView(
                padding: EdgeInsets.all(8.0),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(5.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://www.southernliving.com/thmb/PnNtH0SZmDrtF-jN0aPtGHou23E=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1328567171-e0cc3a2143094e0fb46f7432115b202d.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Space
                  const SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(5.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1k13X3e1YtvU9qu2z14nBhPQPQTKrtl4CAQ&s',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Space
                  const SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(5.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1k13X3e1YtvU9qu2z14nBhPQPQTKrtl4CAQ&s',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Space
                  const SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
            ),
            // Space
            const SizedBox(
              height: 20.0,
            ),

            // Text
            const Text(
              'New Arrivals',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),

            // Space
            const SizedBox(
              height: 20.0,
            ),

            // Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 250.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(5.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://images.squarespace-cdn.com/content/v1/5c71c7d8aadd342945360ba1/1586723509001-E5NQB7VLS1R9NS0EOSOM/Harry+Potter+and+the+Philosopher%27s+Stone+Original+Children%27s+Edition+Cover.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // Text
                        const Text(
                          'Fahrenheight 433',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                        // Text
                        const Text(
                          'Ray',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        const Text(
                          '13.00 ghc',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                            // color: Colors.grey,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark_outlined),
                              color: Colors.grey,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFB94D59),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              child: const Text(
                                'Buy',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Space
                // const SizedBox(
                //   width: 20.0,
                // ),
                Container(
                  height: 200.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),

            // Space
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
