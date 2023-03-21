//
//  ContentView.swift
//  PickerGame
//
//  Created by Herry on 2023/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectionValue = 0
    
    let myColorArray = ["red", "green", "blue"]
    
    func changeColor(index: Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return  Color.red
        }
    }
    var body: some View {
        VStack{
            
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(changeColor(index: selectionValue))
                
            
                .frame(width: 50, height: 50)
            Text("선택된 값 : \(selectionValue)")
            Picker("피커",  selection: $selectionValue) {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            }
            .pickerStyle(.inline)
            
            
            Picker("피커",  selection: $selectionValue) {
                Text("수박").tag(0)
                Text("바나나").tag(1)
                Text("딸기").tag(2)
            }
            .pickerStyle(.segmented)
        }
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
