import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile_corporate_portal/presentation/general/custom_app_bar.dart';
import 'package:mobile_corporate_portal/presentation/general/shop_item.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = '/profile';
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Профиль'),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  child: Column(
                    children: [
                      // Avatar & Full Name
                      Row(
                        children: [
                          _noneAvatar(),
                          Text(
                            'Имя Фамилия',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      // Department
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 8),
                        child: Row(
                          children: [
                            Icon(
                              MdiIcons.briefcaseOutline,
                              color: Colors.grey,
                              size: 32,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Отдел фронтенд разработки',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Speciality
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 8),
                        child: Row(
                          children: [
                            Icon(
                              MdiIcons.fromString(
                                  'badge-account-horizontal-outline'),
                              color: Colors.grey,
                              size: 32,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Отдел фронтенд разработки',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 8),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                'XP',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Отдел фронтенд разработки',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 8),
                        child: Row(
                          children: [
                            Icon(
                              MdiIcons.fromString('email-outline'),
                              color: Colors.grey,
                              size: 32,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Отдел фронтенд разработки',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 8),
                        child: Row(
                          children: [
                            Icon(
                              MdiIcons.fromString('sack'),
                              color: Colors.grey,
                              size: 32,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Отдел фронтенд разработки',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        'Мои награды',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              MdiIcons.fromString('sack'),
                              color: Colors.grey,
                              size: 32,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Отдел фронтенд разработки',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              MdiIcons.fromString('sack'),
                              color: Colors.grey,
                              size: 32,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Отдел фронтенд разработки',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              MdiIcons.fromString('sack'),
                              color: Colors.grey,
                              size: 32,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Отдел фронтенд разработки',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              MdiIcons.fromString('sack'),
                              color: Colors.grey,
                              size: 32,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Отдел фронтенд разработки',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        'Задачи в работе',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                          child: Row(
                            children: [
                              Icon(
                                MdiIcons.fromString('sack'),
                                color: Colors.grey,
                                size: 32,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  'Отдел фронтенд разработки',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 24,
                  left: 8,
                ),
                child: Text(
                  'Избранные товары магазина',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ShopItem(
                      url: 'https://i.ibb.co/RvsT0DV/shop-none.png',
                      title: 'Кофе на выбор в кофейне Встреча',
                      description: 'Кофе на выбор в кофейне Встреча',
                      onBuy: () {},
                      onFavorite: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _noneAvatar() {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Icon(
        Icons.person,
        color: Colors.grey,
        size: 64,
      ),
    );
  }
}
