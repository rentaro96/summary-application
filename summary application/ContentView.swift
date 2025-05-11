//
//  ContentView.swift
//  summary application
//
//  Created by 鈴木廉太郎 on 2025/05/11.
//

import SwiftUI

struct ContentView: View {
    @State private var btnTapped = 0
    var body: some View {
        VStack {
            //MenuView()
        //これがVStackで真ん中に揃える
            Button(action: {
                btnTapped += 1
                print("ヘルプボタンがタップされました")
            }){
               Image("Help")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                }
            
            
           //ここに追加するものをかく
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
