//
//  ContentView.swift
//  ButtonStyle_swiftUi
//
//  Created by minkyuLee on 2022/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30){
            Button(
                action: {
                    print("button clicked!")
                }, label: {
                    Text("탭")
                        .fontWeight(.bold)
                        
                }
            ).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
            
            Button(
                action: {
                    print("button clicked!")
                }, label: {
                    Text("롱클릭")
                        .fontWeight(.bold)
                        
                }
            ).buttonStyle(MyButtonStyle(color: Color.green, type: .long))
            
            Button(
                action: {
                    print("button clicked!")
                }, label: {
                    Text("회전버튼")
                        .fontWeight(.bold)
                        
                }
            ).buttonStyle(MyRotateButtonStyle(color: Color.pink, type: .tab))
            
            Button(
                action: {
                    print("button clicked!")
                }, label: {
                    Text("측소버튼")
                        .fontWeight(.bold)
                        
                }
            ).buttonStyle(MySmallerButtonStyle(color: Color.brown))
            
            Button(
                action: {
                    print("button clicked!")
                }, label: {
                    Text("블러버튼")
                        .fontWeight(.bold)
                        
                }
            ).buttonStyle(MyBlurButtonStyle(color: Color.black))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
