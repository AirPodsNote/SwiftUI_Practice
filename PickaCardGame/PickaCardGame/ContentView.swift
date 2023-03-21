//
//  ContentView.swift
//  PickaCardGame
//
//  Created by Herry on 2023/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 40){
                Image("mainPic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                    .clipShape(Circle())
                
                Image("Picka")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 80)
                
                
                NavigationLink {
                    SecondView()
                } label: {
                    Image("Group1")
                        .resizable()
                        .frame(width: 155, height: 80)
                }

            }
            
        }

        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
