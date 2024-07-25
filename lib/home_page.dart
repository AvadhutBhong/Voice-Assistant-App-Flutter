import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_assistant/features_box.dart';
import 'package:voice_assistant/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glacier'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(
        children: [

          //VIRTUAL ASSISTANT PICTURE
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                    width: 120,
                  margin: EdgeInsets.only(top:3),
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 125,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/virtualAssistant.png')
                  )
                ),
              )
            ],
          ),

          //CHAT BUBBLE
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(top: 20,),
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor,
              ),
              borderRadius: BorderRadius.circular(20).copyWith(topLeft: Radius.zero,),
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.0),
              child: Text('Good Morning , What task can I do for you?',
              style: TextStyle(
                color: Pallete.mainFontColor,
                fontSize: 25,
                fontFamily: 'Cera Pro'
              ),),
            ),
          ),

          //SUGGEST TEXT
          Container(
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.only(
              top: 10,
              left: 22,
            ),
            alignment: Alignment.centerLeft ,
            child: const Text('Here are a few features',
            style: TextStyle(
              fontFamily: 'Cera Pro',
              color: Pallete.mainFontColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),),
          ),

          //FEATURES LIST
          Column(
            children: const[
              FeatureBox(
                  color: Pallete.firstSuggestionBoxColor,
                  header: 'ChatGPT',
                  description: 'A smarter way to stay organized and informed with ChatGPT',
              ),
              FeatureBox(
                color: Pallete.secondSuggestionBoxColor,
                header: 'Dall-E',
                description: 'Get inspired and stay creative with your personal assistant powered by Dall-E',
              ),
              FeatureBox(
                color: Pallete.thirdSuggestionBoxColor,
                header: 'Smart Voice Assistant',
                description: 'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Pallete.firstSuggestionBoxColor,
        child: const Icon(Icons.mic),
      ),
    );
  }
}