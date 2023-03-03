import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class animated_list extends StatefulWidget {
  const animated_list({Key? key}) : super(key: key);

  @override
  State<animated_list> createState() => _animated_listState();
}

class _animated_listState extends State<animated_list> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<String> items_list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: items_list.length,
        itemBuilder: (context, index, animation) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 500),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: Container(
                  height: 75,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Item ${items_list[index]}',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.remove_circle,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _removeItem(index);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _addItem();
        },
      ),
    );
  }

  void _addItem() {
    final int newIndex = items_list.length;
    items_list.add((newIndex + 1).toString());
    _listKey.currentState?.insertItem(newIndex);
  }

  void _removeItem(int index) {
    final removedItem = items_list[index];
    items_list.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
          (context, animation) {
        return AnimationConfiguration.staggeredList(
          position: index,
          duration: const Duration(milliseconds: 500),
          child: SlideAnimation(
            verticalOffset: 50.0,
            child: FadeInAnimation(
              child: SizeTransition(
                sizeFactor: animation,
                child: Container(
                  height: 75,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Item $removedItem',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.remove_circle,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}