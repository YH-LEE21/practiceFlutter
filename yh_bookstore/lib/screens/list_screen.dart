// lib/screens/list_screen.dart
import 'package:flutter/material.dart';
import 'package:yh_bookstore/screens/detail_screen.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var book_titles = [
      '패키지 없이 R로 구현하는 심층 강화학습',
      '바로 찾아 바로 만드는 포토샵 콘텐츠 디자인 북',
      'Vue.js 프로젝트 투입 일주일 전',
      '파이썬 해킹 레시피'
    ];

    var sub_titles = [
      '손으로 풀어보는 Q-Learning부터 R로 구현하는 심층 강화학습까지',
      '발등에 불 떨어진 마케터, 기획자 모두 모여라!',
      'Vue.js 프로젝트 투입 일주일 전',
      '웹 크롤링 및 취약점 진단 도구를 구현해보는 정보 보안 실습'
    ];

    var book_descriptions = [
      '책소개머신러닝과 강화학습의 기본 개념부터 심층 강화학습의 알고리즘과 발전방향까지! 본 서는 강화학습의 기본 요소와 작동 원리에 대해 상세히 다루는데, 딥러닝 프레임 워크를 사용하는 것이 아닌, R base code로 강화학습을 구현하여 강화학습 작동원리를 이해한다. Atari 게임 환경 외에 실생활에서 강화학습을 적용하고자 하는 독자들을 위하여 환경을 직접 설계함과 동시에 패키지 없이 low level부터 모든 것을 구현하기 때문에, 이 책을 통해 강화학습의 이론적 내용을 이해하고 알고리즘 및 환경을 구현하는 능력을 함양하여, 풀고자 하는 다양한 상황에서 쉽게 활용할 수 있을 것이다.',
      '바로 찾아 바로 만드는 포토샵 콘텐츠 디자인 북! 일명, 바.바.북!지금까지 이런 포토샵 도서는 없었다!',
      '많은 개발 언어 중에서 직관적이고 배우기 쉬운 Vue.js를 다뤘다. 『Vue.js 프로젝트 투입 일주일 전』은 실무에서 프로젝트를 개발하는 진행 순서에 맞춰서 구성했기 때문에 초보자도 충분히 따라할 수 있으며, 개발 기초 지식이 있는 독자라면 조금 더 빠르게 Vue.js를 배울 수 있다. 개발 환경 설정부터 웹 앱 구현까지 책을 따라 하면서 자연스럽게 실무에 필요한 내용을 배워 보자.',
      '파이썬은 서버, 머신러닝, 자동화 분야에 이미 광범위하게 이용되고 있어 하나의 언어로 여러 분야에 적용 가능하다. 또한 개발 입문자부터 데이터 분석가, 기업 실무자에 이르기까지 그 수요가 많다. 『파이썬 해킹 레시피』는 저자가 다년간의 정보 보안 강의, 컨설팅, 개발 경험을 토대로 작성한 해킹 요리 비법서다. 파이썬 3.9, Asyncio, BeautifulSoup, 비동기 문법 등 최신 파이썬 트렌드를 반영한 코드는 싱싱한 요리 재료이며 기본에 충실히 풀어나가는 이론은 레시피와 같다. 직접 작성해보는 악성코드, 메시지 은닉 채널, 네트워크 스캐너, XSS, SQL Injection, 크롤러 등 직접 만든 도구를 하나하나 따라가다 보면 어느새 해킹을 파이썬으로 입맛에 맞게 요리하는 자신을 발견할 수 있을 것이다.'
    ];
    var book_url = [
      'https://image.yes24.com/goods/102416641/XL',
      'https://image.yes24.com/goods/102416935/XL',
      'https://image.yes24.com/goods/101926719/L',
      'https://image.yes24.com/goods/101921911/L'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('도서 목록 앱'),
      ),
      body: ListView(
        //ListView를 한 줄을 나타낸다)
        children: <Widget>[
          for (int i = 0; i < book_titles.length; i++)
            BookTile(
              title: book_titles[i], //listTile 가운데에 나타날 위젯
              subtitle: sub_titles[i],
              description: book_descriptions[i],
              image: book_url[i],
            ),
        ],
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String image;
  BookTile(
      {required this.title,
      required this.subtitle,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //
      title: Text(title),
      leading: Image.network(image),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailScreen(
                title: title,
                subtitle: subtitle,
                description: description,
                image: image)));
      }, //여기서 title, subtitle,description,image 데이터를 다음화면으로 이동하며 넘긴다
    );
  }
}
