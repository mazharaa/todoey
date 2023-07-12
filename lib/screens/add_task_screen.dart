import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
        ),
        color: Colors.white,
      ),
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.lightBlueAccent
                ),
              ),
            ),
            TextField(
              style: const TextStyle(color: Colors.black),
              onChanged: (value) {

              },
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.lightBlueAccent,
                  ),
                  fixedSize: MaterialStatePropertyAll(Size.fromHeight(60))
              ),
              onPressed: () {

              },
              child: const Text(
                'Add',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
