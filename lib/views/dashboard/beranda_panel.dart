import 'package:flutter/material.dart';
class BerandaPanel extends StatelessWidget {
  const BerandaPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _backgroundDashboard(),
        _InformasiPengguna(),
        Card(
          margin: EdgeInsets.fromLTRB(0, 210, 0, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Berita',
                    style: TextStyle(fontSize: 20),
                  ),
                  _ListBerita(),
                  Wrap(
                    children: [
                      _TombolMenu(
                        gambar: 'assets/icon1.png',
                      ),
                      _TombolMenu(
                        gambar: 'assets/icon2.png',
                      ),
                      _TombolMenu(
                        gambar: 'assets/chat.png',
                      ),
                      _TombolMenu(
                        gambar: 'assets/icon4.png',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}


class _TombolMenu extends StatelessWidget {
  final String gambar;
  const _TombolMenu({super.key, this.gambar = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(9),
      child: Image.asset(
        gambar,
        width: 40,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 178, 215, 234),
          boxShadow: [
            BoxShadow(
                color: Colors.blueAccent,
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(2, 2))
          ]),
    );
  }
}

class _ListBerita extends StatelessWidget {
  const _ListBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _ItemBerita(
            assetgambar: 'assets/berita1.png',
          ),
          _ItemBerita(
            assetgambar: 'assets/berita2.png',
          ),
          _ItemBerita(
            assetgambar: 'assets/berita3.png',
          ),
        ],
      ),
    );
  }
}

class _ItemBerita extends StatelessWidget {
  final String assetgambar;
  const _ItemBerita({super.key, this.assetgambar = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          assetgambar,
          width: 250,
          height: 130,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _InformasiPengguna extends StatelessWidget {
  const _InformasiPengguna({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(22, 100, 22, 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/profil.png',
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi, Inem',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  'inem23@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          Image.asset(
            'assets/lonceng.png',
            width: 40,
          )
        ],
      ),
    );
  }
}

class _backgroundDashboard extends StatelessWidget {
  const _backgroundDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/bg.png',
      height: 300,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
