//
//  ContentView.swift
//  Tinder
//
//  Created by Herry on 2023/03/21.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            
            // Top Stack
            HStack {
                Button {
                    print("")
                } label: {
                    Image("profile")
                }
                
                Spacer()
                
                Button {
                    print("")
                } label: {
                    Image("tinder-icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 45)
                }
                
                Spacer()
                
                Button {
                    print("")
                } label: {
                    Image("chats")
                }
    
            }//Vstack
            .padding(.horizontal, 30)
            
            
            ZStack {
                ForEach(Card.data.reversed()) { card in
                    CardView(card: card)
                }
            }
            
            // Bottom Stack
            HStack(spacing: 0) {
                
                Button {
                    print("")
                } label: {
                    Image("refresh")
                }
                
                Button {
                    print("")
                } label: {
                    Image("dismiss")
                }
                
                Button {
                    print("")
                } label: {
                    Image("super_like")
                }
                
                Button {
                    print("")
                } label: {
                    Image("like")
                }
                
                Button {
                    print("")
                } label: {
                    Image("boost")
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

struct CardView: View {
    @State var card: Card
    let cardGradient = Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.5)])
    var body: some View {
        ZStack(alignment: .leading) {
            Image(card.imageName).resizable()
            LinearGradient(gradient: cardGradient, startPoint: .top, endPoint: .bottom)
            VStack{
                Spacer()
                VStack(alignment: .leading) {
                    HStack{
                        Text(card.name).font(.largeTitle).fontWeight(.bold)
                        Text(String(card.age)).font(.title)
                    }
                    Text(card.bio)
                }
            }
            .padding()
            .foregroundColor(.white)
        }
        .cornerRadius(1)
        
        .offset(x: card.x, y: card.y)
        .rotationEffect(.init(degrees: card.degree))
        
        .gesture(
            DragGesture()
                .onChanged({ value in
                    //사용자가 드래그 했을 때
                    withAnimation(.default) {
                        card.x = value.translation.width
                        card.y = value.translation.height
                        card.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                    }
                })
            
                .onEnded({ value in
                    withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
                        switch value.translation.width {
                        case 0...100:
                            card.x = 0; card.degree = 0; card.y = 0
                        case let x where x > 100:
                            card.x = 500; card.degree = 12
                        case (-100)...(-1):
                            card.x = 0; card.degree = 0; card.y = 0;
                        case let x where x < -100:
                            card.x = -500; card.degree = -12
                        default: card.x = 0; card.y = 0
                        }
                    }
                })
        )
    }
}
