import 'package:flutter/material.dart';

class HealthyFoodView extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HealthyFoodView> {
  List<String> categories = ['Breakfast', 'Lunch','Breakfast', 'Lunch','Breakfast', 'Lunch'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: a1(),
      body: b2(),
      bottomNavigationBar: bars(),
    );
  }

  Column b2() {
    return Column(
      children: [
        b1(),
        cards,
        categoryTitle(),
        sizedBoxEmpty(),
        sizedBoxCategories()
      ],
    );
  }

  SizedBox sizedBoxCategories() {
    return SizedBox(
        height: 100,
        child: listViewCategories(),
      );
  }

  ListView listViewCategories() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => sizedBoxCategory(index),
        itemCount: categories.length,
      );
  }

  SizedBox sizedBoxCategory(int index) {
    return SizedBox(
        width: 100,
        child: Column(
          children: [
            CircleAvatar(
              child: Icon(
                Icons.add
              ),
            ),
            Text(categories[index]),
          ],
        ),
      );
  }

  SizedBox sizedBoxEmpty() => SizedBox(height: 20,);

  Text categoryTitle() {
    return Text(
      'Categories',
      style: Theme.of(context).textTheme.headline6,
    );
  }

  SizedBox get cards {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: cardListView(),
    );
  }

  ListView cardListView() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: containerCard(context),
      ),
    );
  }

  Container containerCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        children: [
          expandedCardImage(),
          expandedCardDetail(),
          rowCardLocationandStar(),
        ],
      ),
    );
  }

  Row rowCardLocationandStar() {
    return Row(
      children: [
        Text('dat1'),
        Icon(Icons.star),
        Spacer(),
        Text('dat2'),
        Icon(Icons.star),
      ],
    );
  }

  Expanded expandedCardDetail() {
    return Expanded(
      flex: 2,
      child: ListTile(
        title: Text('data'),
        trailing: CircleAvatar(
          child: Text('\$25'),
        ),
        subtitle: Text('data'),
      ),
    );
  }

  Expanded expandedCardImage() => Expanded(flex: 6, child: Placeholder());

  Row b1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(shape: StadiumBorder()),
          child: Text('Tıkla'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(shape: StadiumBorder()),
          child: Text('Hello'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(shape: StadiumBorder()),
          child: Text('Okay'),
        ),
      ],
    );
  }

  BottomNavigationBar bars() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: 'data'),
        BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: 'data'),
      ],
    );
  }

  AppBar a1() => AppBar(
        backgroundColor: Colors.white,
        elevation: 20,
        title: text(),
        centerTitle: false,
        actions: [iconButton()],
      );

  IconButton iconButton() => IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.search,
        color: Colors.black,
      ));

  Text text() {
    return Text('Hello', style: Theme.of(context).textTheme.headline6);
  }
}
