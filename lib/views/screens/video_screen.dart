import 'package:flutter/material.dart';
import 'package:cashei/constants.dart';
import 'package:cashei/controllers/video_controller.dart';

import 'package:cashei/views/widgets/circle_animation.dart';
import 'package:cashei/views/widgets/video_player_iten.dart';
import 'package:video_player/video_player.dart';
import 'package:get/get.dart';

class VideoScreen extends StatelessWidget {
  VideoScreen({Key? key}) : super(key: key);

  final VideoController videoController = Get.put(VideoController());

  buildProfile(String profilePhoto) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(children: [
        Positioned(
          left: 5,
          child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image(
                image: NetworkImage(profilePhoto),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ]),
    );
  }

  buildMusicAlbum(String profilePhoto) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(11),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.grey,
                      Colors.white,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image(
                  image: NetworkImage(profilePhoto),
                  fit: BoxFit.cover,
                ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Obx(() {
        return PageView.builder(
          itemCount: videoController.videoList.length,
          controller: PageController(initialPage: 0, viewportFraction: 1),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final data = videoController.videoList[index];
            return Stack(
              children: [
                VideoPlayerItem(
                  videoUrl: data.videoUrl,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "@"+data.username,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  // Text(
                                  //   data.caption,
                                  //   style: const TextStyle(
                                  //     fontSize: 15,
                                  //     color: Colors.white,
                                  //   ),
                                  // ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/icons/challenge.png',height: 15,width: 15,),
                                      SizedBox(width: 5,),
                                      Text(
                                        data.caption,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,)

                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            // margin: EdgeInsets.only(top: 10),
                            margin: EdgeInsets.only(top: size.height / 2.5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                buildProfile(
                                  data.profilePhoto,
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () =>
                                          videoController.likeVideo(data.id),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 40,
                                        color: data.likes.contains(
                                                authController.user.uid)
                                            ? Colors.red
                                            : Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      data.likes.length.toString(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                // Column(
                                //   children: [
                                //     InkWell(
                                //       onTap: () => Navigator.of(context).push(
                                //         MaterialPageRoute(
                                //           builder: (context) => CommentScreen(
                                //             id: data.id,
                                //           ),
                                //         ),
                                //       ),
                                //       child: const Icon(
                                //         Icons.comment,
                                //         size: 40,
                                //         color: Colors.white,
                                //       ),
                                //     ),
                                //     const SizedBox(height: 7),
                                //     Text(
                                //       data.commentCount.toString(),
                                //       style: const TextStyle(
                                //         fontSize: 20,
                                //         color: Colors.white,
                                //       ),
                                //     )
                                //   ],
                                // ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.reply,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      data.shareCount.toString(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                Image.asset('assets/icons/vector.png')
                                // CircleAnimation(
                                //   child: buildMusicAlbum(data.profilePhoto),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      }),
    );
  }
}