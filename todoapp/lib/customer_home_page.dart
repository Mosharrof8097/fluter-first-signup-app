import 'package:flutter/material.dart';

class customer_home_page extends StatelessWidget {
  const customer_home_page({super.key});

  static final List<Map<String, dynamic>> mangoProducts = [
    {
      'name': 'Alphonso Mango',
      'price': 280,
      'image':
          'https://www.istockphoto.com/photo/mango-isolated-on-white-background-gm911274308-250918658?searchscope=image%2Cfilm',
    },
    {
      'name': 'Kesar Mango',
      'price': 250,
      'image':
          'https://media.istockphoto.com/id/529964085/photo/mango.jpg?s=1024x1024&w=is&k=20&c=1jABcguTDPw1n8x53Z-K42klDCSkq85ovcXTqBrdY_c=',
    },
    {
      'name': 'Langra Mango',
      'price': 220,
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/4/40/Mango_4.jpg',
    },
    {
      'name': 'Himsagar Mango',
      'price': 300,
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/4/49/Mango_-_single.jpg',
    },
    {
      'name': 'Dasheri Mango',
      'price': 200,
      'image':
          'https://www.shutterstock.com/shutterstock/photos/2500608655/display_1500/stock-photo-ripe-mango-isolated-on-white-background-2500608655.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Mango",
                style: TextStyle(
                  color: const Color.fromARGB(255, 15, 80, 1),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Shop",
                style: TextStyle(
                  color: const Color.fromARGB(255, 201, 71, 19),
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: true,

        actions: [Icon(Icons.notifications, size: 40, color: Colors.black)],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 2 columns
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.75, // adjust height/width ratio
        ),
        itemCount: mangoProducts.length,
        itemBuilder: (context, index) {
          final mango = mangoProducts[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        mango['image'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    mango['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text('৳${mango['price']} প্রতি কেজি'),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("${mango['name']} অর্ডার হয়েছে!"),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(double.infinity, 35),
                    ),
                    child: const Text("অর্ডার"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
