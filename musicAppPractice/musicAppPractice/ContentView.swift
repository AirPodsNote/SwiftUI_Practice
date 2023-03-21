//
//  ContentView.swift
//  musicAppPractice
//
//  Created by Herry on 2023/03/21.
//

import SwiftUI

struct ContentView: View {
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
                
                Text("Lovely")
                    .bold()
                    .font(.system(size: 24))
                
                Text("Bille ellish")
                    .font(.system(size: 14))
            }
            VStack{
                
                HStack(spacing: 20){
                    Image("play1")
                    ZStack{
                        Image("play2")
                        Image("Vector1")
                    }
                    Image("play3")
                }
                
                Image("Group 1")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
