//
//  ContentView.swift
//  SwiftUIText
//
//  Created by Herry on 2023/03/19.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack(spacing: 10) {
            HStack{
                TextField("사용자 이름", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                Button {
                    self.username = ""
                } label: {
                    if self.username.count > 0 {
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.secondary)
                            .font(.system(size: 25))
                    }
                }

            }
            HStack{
                SecureField("비밀번호를 입력해주세요", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button {
                    self.password = ""
                } label: {
                    if self.username.count > 0 {
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.secondary)
                            .font(.system(size: 25))
                    }
                }
            }
            Text("입력한 비번 : \(password)")
        }.padding(.horizontal, 50)
        
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
