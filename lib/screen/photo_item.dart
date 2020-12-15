import 'package:flutter/material.dart';
import 'package:latihan_bloc/model/photos_model.dart';

class PhotoItem extends StatelessWidget {
  final PhotosModel data;

  const PhotoItem({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
      elevation: 4,
      child: InkWell(
        onTap: () {},
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.network(
              '${data.url}',
              fit: BoxFit.cover,
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      '${data.thumbnailUrl}',
                      fit: BoxFit.cover,
                      height: 50,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: Text(data.title)),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
