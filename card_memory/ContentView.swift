//
//  ContentView.swift
//  card_memory
//
//  Created by Joseph Chica on 2/14/20.
//  Copyright © 2020 Joseph Chica. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var num1 = 2
    @State private var num2 = 5
    @State private var lives = 3
    @State private var height = 1
    @State private var width = 4
    var body: some View {
        ZStack{
            Image("green").resizable().edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Text("TEST YOUR MEMORY")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 10.0, green: 40.0, blue: 50.0, opacity: 1.0))
                    .underline()
                
                HStack(){
                    Text("Player Lives: " + String(lives))
                        .font(.headline)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Text("Timer:")
                        .font(.headline)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Text("Matches Left:")
                        .font(.headline)
                        .foregroundColor(Color.white)
                }
                .padding(.top, 40.0)
                
                Spacer()
                
                HStack{
                        
                    Image(String(num1) + "C").resizable().frame(maxWidth: 50, maxHeight: 75).aspectRatio(contentMode: .fill)
                    Image(String(num2) + "C").resizable().frame(maxWidth: 50, maxHeight: 75).aspectRatio(contentMode: .fill)
                    Image(String(num2) + "C").resizable().frame(maxWidth: 50, maxHeight: 75).aspectRatio(contentMode: .fill)
                    Image(String(num2) + "C").resizable().frame(maxWidth: 50, maxHeight: 75).aspectRatio(contentMode: .fill)
                }
                
                Spacer()
                
                Button(action: {
                    self.num1 = Int.random(in: 2...4)
                    self.num2 = Int.random(in: 2...4)
                }) {
                    Text("Flip Cards")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .buttonStyle(/*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
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
