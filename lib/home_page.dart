import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildSectionHeader(String title, String seeMoreText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
          Text(seeMoreText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.blue[900])),
        ],
      ),
    );
  }

    Widget _buildImageListNewPlace() {
        List<String> imageUrls = [
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/1.jpeg?alt=media&token=0180045c-af56-44b1-a819-c363f83bfd3a',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/2.jpeg?alt=media&token=67ab2ca1-a6fa-4f38-b05c-355a09467649',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/3.jpeg?alt=media&token=65df8ed6-278b-455d-90e4-a52576be408b',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/4.jpeg?alt=media&token=62395b2e-2aa1-47ca-8ff0-dc9e8387bd65',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/5.jpeg?alt=media&token=c1d3265e-7694-4eda-9728-6076c1bcf38c',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/6.jpeg?alt=media&token=947b0ce4-1963-46fe-a66f-e735854e98f4',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/7.jpeg?alt=media&token=aee89e8a-f7e0-4a6e-8951-3c3c5847e665',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/8.jpeg?alt=media&token=d12d9d8d-fa47-4cbe-bfcc-18965dee533e',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/9.jpeg?alt=media&token=4fef65b0-b88f-468d-b731-56b13d7f5fc1',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/10.jpeg?alt=media&token=86d62e89-fa4c-4e47-8709-412fe4d51662',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/11.jpeg?alt=media&token=ee7231ff-0103-49bd-a9b0-fea7fabd530b',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/12.jpeg?alt=media&token=18ad5f2f-7c98-4471-9e2d-7eee1a791408',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/13.jpeg?alt=media&token=5bf169ad-d8db-468d-bd86-1a233012c249',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/14.jpeg?alt=media&token=c2867fd7-ba3d-4d4e-9778-f9a8e7854543',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/16.jpeg?alt=media&token=c74caf84-268a-443a-bd49-7dbd83e1cbdc',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/17.jpeg?alt=media&token=f4a833b5-b939-4cdb-b64a-20c1233afaab',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/18.jpeg?alt=media&token=63d2c00e-5893-42b9-92f8-b416c4e4e612',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/19.jpeg?alt=media&token=5f7ecadd-9db6-42db-afc7-4d72085b0e48',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/20.jpeg?alt=media&token=25cd782d-b3d5-4070-9ab7-47142bc099d3',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/21.jpg?alt=media&token=1cd42b36-1fc3-4b5c-a8f0-bde6ea4c1773',
        ];

        return Container(
            height: 120.0,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
                return Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: CachedNetworkImage(
                    imageUrl: imageUrls[index], // 使用 CachedNetworkImage
                    width: 100.0,
                    height: 100.0,
                    placeholder: (context, url) => CircularProgressIndicator(), // 載入中顯示的 widget
                    errorWidget: (context, url, error) => Icon(Icons.error), // 發生錯誤時顯示的 widget
                ),
                );
            },
            ),
        );
    }



    Widget _buildImageListPopularHotel() {
        List<String> imageUrls = [
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_1.jpeg?alt=media&token=e1b1140b-9439-4872-ac2e-d566dab3d07e',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_2.jpeg?alt=media&token=8bc43c11-ba79-47ef-94d2-992030614cf9',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_3.jpeg?alt=media&token=da37aec3-2b68-4c08-af66-fed7831a4150',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_4.jpeg?alt=media&token=9c43d978-291a-4891-befb-6e66e7d2adaa',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_5.jpeg?alt=media&token=0e01a63f-49fb-4ca7-afa6-946a09a955c5',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_6.jpeg?alt=media&token=f35eee9c-e3ca-45ba-88bf-4fdab6e908f5',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_7.jpeg?alt=media&token=7bd9e876-621d-4d47-bc61-6c6ac345c0fb',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_8.jpeg?alt=media&token=0590dd76-a058-4a05-b295-a55560bebe18',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_9.jpeg?alt=media&token=568d7a56-4f58-4d7e-b2b7-47e326cfe50a',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_10.jpeg?alt=media&token=e0f0f313-be72-4ca2-b202-9a73ba0377c1',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_11.jpeg?alt=media&token=1feda34d-a5f5-4131-a803-546449b6a4be',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_12.jpeg?alt=media&token=f764f770-de46-4923-9500-0fe100cb5916',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_13.jpeg?alt=media&token=507ebc08-93d9-41ec-8876-5b6208fc4140',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_14.jpeg?alt=media&token=302852a1-8fb5-4872-9aa6-d145281746e8',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_15.jpeg?alt=media&token=3a0343ab-9104-4a5d-bef2-2a95c88d8ee5',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_16.jpeg?alt=media&token=95b82e29-3fa4-436c-a8ca-7076269e5088',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_17.jpeg?alt=media&token=92616c89-830c-4f22-93ac-a711970e70ca',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_18.jpeg?alt=media&token=bebc280a-d485-47bb-9cfd-c2dbb8db5999',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_19.jpeg?alt=media&token=50167129-782f-45b0-a846-dc13fa3f0614',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_20.jpeg?alt=media&token=376bce09-d88a-4c9c-b0f8-886d82d08c63',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/hotel%2Fhotel_21.jpeg?alt=media&token=db829151-1974-4bb2-8291-2ee58415544b',

        ];

        return Container(
            height: 120.0,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
                return Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: CachedNetworkImage(
                    imageUrl: imageUrls[index], // 使用 CachedNetworkImage
                    width: 100.0,
                    height: 100.0, 
                    placeholder: (context, url) => CircularProgressIndicator(), // 載入中顯示的 widget
                    errorWidget: (context, url, error) => Icon(Icons.error), // 發生錯誤時顯示的 widget
                ),
                );
            },
            ),
        );
    }

    Widget _buildImageListRecommend() {
        List<String> imageUrls = [
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F1.jpg?alt=media&token=cdbe0e57-97f9-4bda-97a1-ad52ca99028d',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F2.jpg?alt=media&token=32686db4-1fed-455f-b935-8091e924a78a',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F3.jpeg?alt=media&token=3161470e-0ee3-4432-accd-1dec89f77e7a',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F4.jpeg?alt=media&token=9ebd1d2e-d2c1-4ae9-9ebc-16236fc0cb02',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F5.jpeg?alt=media&token=d2bdb9fe-6f94-4429-93a8-72161c702459',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F6.jpeg?alt=media&token=b0b7a377-1dfd-4046-bcfd-37c077405013',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F7.jpeg?alt=media&token=56e7327a-120c-4507-ab3e-64e73128e92c',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F8.jpeg?alt=media&token=934e3af6-6e70-486d-8965-f643f1db59dc',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F9.jpeg?alt=media&token=24e4b1cd-4499-4b4a-a25a-05f3c43a526a',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F10.jpeg?alt=media&token=90da6771-df13-4537-99f7-a173dba663ed',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F11.jpeg?alt=media&token=df08a445-184e-4858-abca-6fb607907596',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F12.jpeg?alt=media&token=fe2ff578-c048-42a6-a8b7-814c3e5d2d39',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F13.jpeg?alt=media&token=d13739d1-28ff-4525-91bf-31560d52afa3',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F14.jpeg?alt=media&token=89f3f422-e0db-4381-a37c-7d39883d04cd',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F15.jpeg?alt=media&token=b945cfd7-b433-4d0d-97db-74312ab325a8',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F16.jpeg?alt=media&token=f85415d9-4c13-47c9-8dbb-b2529e4cc973',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F17.jpeg?alt=media&token=919c773f-fd1a-4881-9d0c-e9cdce1e5063',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F18.jpeg?alt=media&token=027dd3a5-4678-4c82-b696-b009db1d46d0',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F19.jpeg?alt=media&token=de66eab0-84c2-4b96-a817-3d95395ee45e',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F20.jpeg?alt=media&token=3580c513-2e0b-4655-bb0e-ac7e35c54829',
            'https://firebasestorage.googleapis.com/v0/b/nelson-orderhotel.appspot.com/o/recommend%2F21.jpeg?alt=media&token=90a0ae2c-83a9-49dc-af81-8222143e96ff',

        ];

        return Container(
            height: 120.0,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
                return Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: CachedNetworkImage(
                    imageUrl: imageUrls[index], // 使用 CachedNetworkImage
                    width: 100.0,
                    height: 100.0, 
                    placeholder: (context, url) => CircularProgressIndicator(), // 載入中顯示的 widget
                    errorWidget: (context, url, error) => Icon(Icons.error), // 發生錯誤時顯示的 widget
                ),
                );
            },
            ),
        );
    }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.0),  // 添加這行來增加上方的間距
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi, Anna', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
                    Text("Let's explore the world!"),
                  ],
                ),
                Icon(Icons.search),
              ],
            ),
          ),
          _buildSectionHeader("New Place", "See more"),
          _buildImageListNewPlace(),
          SizedBox(height: 40.0),  // 添加這行來增加上方的間距
          _buildSectionHeader("Popular Hotel", "See more"),
          _buildImageListPopularHotel(),
          SizedBox(height: 40.0),  // 添加這行來增加上方的間距
          _buildSectionHeader("Recommend", "See more"),
          _buildImageListRecommend(),
          SizedBox(height: 40.0),  // 添加這行來增加上方的間距
        ],
      ),
    );
  }
}
