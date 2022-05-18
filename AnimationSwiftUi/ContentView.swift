//
//  ContentView.swift
//  AnimationSwiftUi
//
//  Created by Максим Гурков on 17.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var flag = true
    
    var body: some View {
        ZStack {
            FonView(flag: $flag)
                .ignoresSafeArea()
            VStack {
                Spacer()
                RocketView()
                    .frame(width: 100, height: 250, alignment: .center)
                    .offset(x: flag ? 0 : 180, y: flag ? 0 : -760)
                    .rotationEffect(.degrees(flag ? 0 : 10))
                    .animation(.easeInOut(duration: 0.9), value: flag)
                
                Button {
                    flag.toggle()
                } label: {
                    Text(flag ? "Запуск" : "Вернуть")
                        .foregroundColor(flag ? .blue : .white)
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
