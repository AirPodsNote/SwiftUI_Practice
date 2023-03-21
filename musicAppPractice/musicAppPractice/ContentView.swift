//
//  ContentView.swift
//  musicAppPractice
//
//  Created by Herry on 2023/03/21.
//

import SwiftUI
import ARKit
import MediaPlayer



struct ContentView: View {
    

    
    @State var audioPlayer: AVAudioPlayer!
    @State var startButton: Bool = false
        
    
    var body: some View {
        VStack(spacing: 100){
            HStack(spacing: 50){
                Image("Frame1")
                Image("Frame2")
                Image("Frame3")
                Image("Frame4")
            }
            .frame(width: 286, height: 24)
            VStack{
                Image("main")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 231, height: 231)
                    .clipShape(Circle())
                
                Text("노력")
                    .bold()
                    .font(.system(size: 24))
                
                Text("박원")
                    .font(.system(size: 14))
            }
            
            VStack{
                
                HStack(spacing: 20){
                    Image("play1")
                    
                        Button {
                            startButton.toggle()
                            if startButton == true {
                                audioPlayer.play()
                            } else {
                                audioPlayer.pause()
                            }
                        } label: {
                            ZStack{
                                Image("play2")
                                Image("Vector1")
                            }
                        }


                    Image("play3")
                }
                
                Image("Group 1")

                    }
            }
            .onAppear(){
                let sound = Bundle.main.path(forResource: "effort", ofType: "mp3")
                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            }
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

