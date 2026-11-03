import "package:flutter/material.dart";

class PostWidget extends StatelessWidget {
  const new({super.key});

  final bool isLiked = false; // This should ideally be managed by state management

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://resizing.flixster.com/U076S5x8rmvSFcRD5BxMjQTrHuo=/fit-in/352x330/v2/https://resizing.flixster.com/qtzRqvpYhbreZCEQm2cShNXdKLg=/ems.cHJkLWVtcy1hc3NldHMvY2VsZWJyaXRpZXMvYjU5OWMzMzAtZDdiZS00MzdjLWFlMTAtMjUxMzkxZGYyNWE3LmpwZw==',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            'This is a sample post description. It can be quite long and will wrap to the next line if necessary.',
            style: const TextStyle(fontSize: 16.0),
          ),

        ],)

    );
  }
}