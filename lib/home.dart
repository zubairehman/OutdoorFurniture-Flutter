import 'package:flutter_web/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _buildAppBar(),
        body: _buildBody(context),
      ),
    );
  }

  //AppBar Methods:-------------------------------------------------------------
  Widget _buildAppBar() {
    return AppBar(
      title: _buildTitle(),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: _buildLeading(),
      actions: _buildActions(),
    );
  }

  Widget _buildTitle() {
    return Text(
      'Furniture',
      style: TextStyle(
        color: Color(0xFF46474C),
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontSize: 22.0,
      ),
    );
  }

  Widget _buildLeading() {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: IconButton(
        icon: Icon(Icons.menu),
        color: Color(0xFF46474C),
        onPressed: () {},
      ),
    );
  }

  List<Widget> _buildActions() {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 30.0),
        child: IconButton(
          color: Color(0xFF46474C),
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      )
    ];
  }

  //Body Methods:---------------------------------------------------------------
  Widget _buildBody(BuildContext context) {
    return Stack(
      children: <Widget>[
        _buildBackgroundImage(),
        Padding(
          padding: const EdgeInsets.only(right: 80.0),
          child: Align(
            alignment: FractionalOffset.centerRight,
            child: _buildContent(context),
          ),
        ),
      ],
    );
  }

  Widget _buildBackgroundImage() {
    return Image.network(
      "https://render.fineartamerica.com/images/rendered/wall-view/medium/room002/wood-print/images-medium-5/vector-realistic-paper-cuts-on-the-transparent-background-set-of-shadow-effects-for-decoration-comicsans.jpg?printWidth=8.000&printHeight=8.000",
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Caica store new product',
          style: TextStyle(
            fontFamily: 'ProductSans',
            fontSize: 12.0,
            letterSpacing: 1.0,
          ),
        ),
        Text(
          'Outdoor Furniture',
          style: Theme.of(context).textTheme.display3.copyWith(
                color: Color(0xFF46474C),
              ),
        ),
        Text(
          'It is a long established fact that a reader will be distracted by the readable\ncontent of a page when looking at its layout.',
          style: TextStyle(
            fontFamily: 'ProductSans',
            fontSize: 12.0,
            letterSpacing: 1.0,
          ),
        ),
        SizedBox(height: 20.0),
        _buildReadMoreButton(),
      ],
    );
  }

  Widget _buildReadMoreButton() {
    return RaisedButton(
      child: Text(
        "Read more",
        style: TextStyle(
          fontFamily: 'ProductSans',
          fontSize: 12.0,
          letterSpacing: 1.0,
        ),
      ),
      onPressed: () {},
      textColor: Color(0xFF46474C),
      color: Colors.cyanAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
    );
  }
}
