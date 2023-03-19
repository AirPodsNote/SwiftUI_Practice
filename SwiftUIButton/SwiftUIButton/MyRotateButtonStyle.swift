//
//  MyRotateButtonStyle.swift
//  SwiftUIButton
//
//  Created by Herry on 2023/03/19.
//

import SwiftUI

enum RotateButtonType{
    case rotate
}

struct MyRotateButtonStyle : ButtonStyle{
    
    var color: Color
    var type: RotateButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .rotationEffect(configuration.isPressed ? .degrees(180) : .degrees(0))

        }
    }

struct MyRotateButtonSytle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            print("")
        } label: {
            Text("하하")
        } .buttonStyle(MyRotateButtonStyle(color: .red, type: .rotate))

    }
}
