// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nettruyen/app/domain/models/comic.dart';
import 'package:nettruyen/app/presentaion/widgets/image_title_comic.dart';

class ItemComic1 extends StatefulWidget {
  ItemComic1({super.key, required this.comic});
  ComicEntity comic;

  @override
  State<ItemComic1> createState() => _ItemComic1State();
}

class _ItemComic1State extends State<ItemComic1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 100,
      color: Colors.white,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ImageTitleComic(
            url: widget.comic.thumbnail,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.topLeft,
            child: Visibility(
              visible: widget.comic.is_trending ?? false,
              child: Container(
                margin: const EdgeInsets.all(5),
                height: 20,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 77, 65),
                    borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  "Hot",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            color: const Color.fromARGB(182, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.comic.title.toString(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.comic.last_chapter != null
                      ? widget.comic.last_chapter!.name
                      : "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}