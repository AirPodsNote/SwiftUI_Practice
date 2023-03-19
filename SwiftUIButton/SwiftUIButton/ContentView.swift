//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Herry on 2023/03/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //ButtonStyle 적용
        VStack {
            Button {
                print("버튼이 눌렸습니다.")
            } label: {
                Text("탭")
            }.buttonStyle(MyButtonStyle(color: .blue, type: .tab))
            
            
            Button {
                print("버튼이 눌렸습니다.")
            } label: {
                Text("롱클릭")
            }.buttonStyle(MyButtonStyle(color: .green, type: .long))
            
            Button {
                print("버튼이 눌렸습니다.")
            } label: {
                Text("롱클릭")
            }.buttonStyle(MyRotateButtonStyle(color: .red, type: .rotate))
        }

    }
}

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
