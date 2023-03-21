//
//  ContentView.swift
//  ToastPopUpPractice
//
//  Created by Herry on 2023/03/19.
//

import SwiftUI
import ExytePopupView

struct ContentView: View {
    
    @State var shouldShowBottomSolidMessage: Bool = false
    @State var shouldShowBottomToastMessage: Bool = false
    
    
    func createBottomSolidMessage() -> some View {
        HStack(spacing: 10){
            Image(systemName: "book.fill")
                .foregroundColor(.white)
                .font(.system(size: 40))
            VStack(alignment: .leading){
                Text("안내 메세지")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                
                Text("토스트 메세지 입니다.")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .lineLimit(2)
                Divider().opacity(0)
            }
                                    
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 30)
        .frame(width: UIScreen.main.bounds.width)
        .background(.purple)
    }
    
    func createBottomToastMessage() -> some View {
        HStack(spacing: 10){
            Image(systemName: "book.fill")
                .foregroundColor(.white)
                .font(.system(size: 40))
            VStack(alignment: .leading){
                Text("안내 메세지")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                
                Text("토스트 메세지 입니다.")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .lineLimit(2)
                Divider().opacity(0)
            }
                                    
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 30)
        .frame(width: UIScreen.main.bounds.width)
        .background(.purple)
    }
    
    var body: some View {
        ZStack {
            VStack(spacing:20){
 
                
                Button {
                    self.shouldShowBottomSolidMessage = true
                } label: {
                    Text("바텀 솔리드 메시지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .padding()
                        .background(.purple)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
                
                Button {
                    self.shouldShowBottomToastMessage = true
                } label: {
                    Text("토스트 띄우기")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .padding()
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
            } //Vstack
            .padding(.bottom, 5)
        }//Zstack
        .edgesIgnoringSafeArea(.all)
        .popup(isPresented: $shouldShowBottomSolidMessage) {
            self.createBottomSolidMessage()
        } customize: {
            $0.autohideIn(2).position(.bottom).type(.toast).animation(.easeInOut).closeOnTap(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
