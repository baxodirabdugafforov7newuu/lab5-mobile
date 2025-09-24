import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(); // for section3 task4

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Section4().task4_3(),
          // child: Section1().task1_4(),
          // child: Section2().task2_1(),
          // child: Section2().task2_4(),
          // child: Section3().task3_4(controller, context),
          // child: Section4().task4_2(),
          // child: Section5().challenge5_2()
        ),
      ),
    );
  }
}

// SECTION 1
// (Tasks 1.1 - 1.4)

class Section1 {
  // Task 1.1
  Widget task1_1() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.redAccent,
      height: 150,
      width: 100,
      child: const Text('Hello!'),
    );
  }

  // Task 1.2
  Widget task1_2() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.blue,
      height: 100,
      width: 100,
      child: const Icon(Icons.home),
    );
  }

  // Task 1.3
  Widget task1_3() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: const Text('Rounded Box'),
    );
  }

  // Task 1.4
  Widget task1_4() {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(16.0),
      color: Colors.blue,
      height: 100,
      width: 100,
      child: const Text('With Margin'),
    );
  }
}

//  SECTION 2
// (Tasks 2.1 - 2.4)

class Section2 {
  // Task 2.1
  Widget task2_1() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text('Child 1'),
        Text('Child 2'),
        Text('Child 3'),
        Text('Child 4'),
      ],
    );
  }

  // Task 2.2
  Widget task2_2() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text('Child 1'),
        Text('Child 2'),
        Text('Child 3'),
        Text('Child 4'),
      ],
    );
  }

  // Task 2.3
  Widget task2_3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text('Child 1'),
        Text('Child 2'),
        Text('Child 3'),
        Text('Child 4'),
      ],
    );
  }

  // Task 2.4
  Widget task2_4() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text('Child 1'),
        Text('Child 2'),
        Text('Child 3'),
        Text('Child 4'),
      ],
    );
  }
}

// SECTION 3
// (Tasks 3.1 - 3.4)

class Section3 {
  // Task 3.1
  Widget task3_1() {
    return const Center(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Enter your password",
        ),
      ),
    );
  }

  // Task 3.2
  Widget task3_2() {
    return const Center(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Enter your password",
        ),
      ),
    );
  }

  // Task 3.3
  Widget task3_3() {
    return const Center(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Enter your name",
          icon: Icon(Icons.person),
        ),
      ),
    );
  }

  // Task 3.4
  Widget task3_4(TextEditingController controller, BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Type something",
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final text = controller.text;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("You typed: $text")),
              );
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}

// SECTION 4
// (Tasks 4.1 - 4.4)

class Section4 {
  // Task 4.1
  Widget task4_1() {
    return Row(
      children: [
        Expanded(
          child: Container(height: 100, color: Colors.red),
        ),
        Expanded(
          child: Container(height: 100, color: Colors.green),
        ),
      ],
    );
  }

  // Task 4.2
  Widget task4_2() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(height: 100, color: Colors.red),
        ),
        Expanded(
          flex: 2,
          child: Container(height: 100, color: Colors.green),
        ),
      ],
    );
  }

  // Task 4.3
  Widget task4_3() {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(color: Colors.red),
        ),
        Expanded(
          flex: 2,
          child: Container(color: Colors.green),
        ),
      ],
    );
  }

  // Task 4.4
  Widget task4_4() {
    return Row(
      children: [
        Container(width: 100, height: 100, color: Colors.red),
        const Spacer(), 
        Container(width: 100, height: 100, color: Colors.green),
      ],
    );
  }
}


// SECTION 5
// (Challenges 5.1 - 5.2)

class Section5 {
  // Challenge 5.1
  Widget challenge5_1() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        width: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row: Avatar + Name
            Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  child: Text("A"),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "User Name",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "@username",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Bio
            const Text(
              "A short bio about the user goes here...",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),

            // Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Follow"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Message"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Challenge 5.2
  Widget challenge5_2() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                'https://images.unsplash.com/photo-1623607915241-a3151d59a9c8?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8b2xkJTIwdHJhZmZvcmR8ZW58MHx8MHx8fDA%3D',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),

            // Product details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Old Trafford",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Home Stadium of Manchester United",
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "\The Theatre of Dreams",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

