import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ShopItem extends StatefulWidget {
  final String url;
  final VoidCallback onBuy;
  final VoidCallback onFavorite;
  final String title;
  final String description;

  ShopItem({
    Key key,
    this.url,
    this.onBuy,
    this.title,
    this.description,
    this.onFavorite,
  }) : super(key: key);

  @override
  _ShopItemState createState() => _ShopItemState();
}

class _ShopItemState extends State<ShopItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        child: Column(
          children: [
            Image.network(
              'https://i.ibb.co/RvsT0DV/shop-none.png',
              // width: 100,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6),
              child: Text(
                widget.description,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(6)),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: widget.onBuy,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          MdiIcons.cash,
                          color: Colors.green[900],
                          size: 32,
                        ),
                        Text(
                          '100',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(6)),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: widget.onFavorite,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            MdiIcons.cardsHeart,
                            color: Colors.red,
                            size: 32,
                          ),
                          Text(
                            'В изрбанное',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
