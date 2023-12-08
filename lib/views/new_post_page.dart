import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class NewPostPage extends StatefulWidget {
  const NewPostPage({super.key});

  @override
  State<NewPostPage> createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  final TextEditingController _writeCaptionController=TextEditingController();

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: appBar(context),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          writePost(_writeCaptionController),
          const Divider(),
          addText(context,"Add Location"),
          const Divider(),
          addLocationButton,
          const Divider(),
          addText(context,"Add Music"),
          const Divider(),
          addMusicButton,
          const Divider(),
        ],
      ),

    );
  }

//===============================================================================

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Color.fromRGBO(29, 41, 57, 1),
        ),
        onPressed: () {
          Get.back();
        },
      ),
      title:Text("New Post",style: Theme.of(context).textTheme.titleMedium,) ,
      actions: [
        InkWell(
            onTap: (){
              _showAlertDialog(context);
            },
            child: Center(child: Text("Post",style:Theme.of(context).textTheme.titleSmall?.apply(color: Colors.blue),))
        ),
        IconButton(
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Color.fromRGBO(29, 41, 57, 1),
          ),
          onPressed: () {
            _showAlertDialog(context);
          },
        ),

      ],
    );
  }
}

Padding writePost(controller){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/images/page_image.JPG",width: 100,height: 100,fit: BoxFit.fill,),

          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                  hintText: "Write a Caption",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 2)
              ),
              maxLines: 10,
            ),
          )
        ],
      ),

    ),
  );
}

SizedBox addText(context,text){
  return  SizedBox(
    height: 40,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(onPressed: (){}, child: Text(text,style:Theme.of(context).textTheme.titleMedium,)),
    ),
  );
}

SizedBox get addLocationButton{
  return SizedBox(
    height: 40,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),
                child: const Text("Multiple Select",style:TextStyle(
                    fontSize: 15,
                    color: Colors.black
                ),)
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),
                child: const Text("Multiple Select",style:TextStyle(
                    fontSize: 15,
                    color: Colors.black
                ),)
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),
                child: const Text("Multiple Select",style:TextStyle(
                    fontSize: 15,
                    color: Colors.black
                ),)
            ),
          ],
        ),
      ),
    ),
  );
}

SizedBox get addMusicButton{
  return  SizedBox(
    height: 40,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),

                child:  Wrap(
                  children: [
                    Image.asset("assets/images/music.png"),
                    const SizedBox(width: 10,),
                    const Text("Multiple Select",style:TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    ),),
                  ],
                )
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),

                child:  Wrap(
                  children: [
                    Image.asset("assets/images/music.png"),
                    const SizedBox(width: 10,),
                    const Text("Multiple Select",style:TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    ),),
                  ],
                )
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400
                ),

                child:  Wrap(
                  children: [
                    Image.asset("assets/images/music.png"),
                    const SizedBox(width: 10,),
                    const Text("Multiple Select",style:TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    ),),
                  ],
                )
            ),
          ],
        ),
      ),
    ),
  );
}



// Function to show the alert dialog
Future<void> _showAlertDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(

        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/alert.png",width: 60,height: 60,),
            const Text("Do You want to post?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            const SizedBox(height: 10,),
            const Text("Your post will share by clicking yes, if need any change click on edit.",maxLines:2,style: TextStyle(fontSize: 15,),),
            const SizedBox(height: 20,),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the alert dialog
                  },
                  child: Text('Edit'),
                ),
                const Spacer(),
                ElevatedButton(onPressed: (){}, child: const Text('Post Now'))
              ],
            )
          ],
        ),

      );
    },
  );
}
