//
//  ContentView.swift
//  card_memory
//
//  Created by Joseph Chica on 2/14/20.
//  Copyright © 2020 Joseph Chica. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private var card = ["back", "C"]
    @State private var choice = 0
    @State private var numbers = [0, 1]
    @State private var num1 = 2
    @State private var num2 = 5
    @State private var lives = 3
    @State private var height = 1
    @State private var width = 4
    @State private var all_flipped = true
    @State private var choc = [0]
    
    var body: some View {
        
        ZStack{
            //background
            Image("green").resizable().edgesIgnoringSafeArea(.all)
            
            VStack{
                //title
                Text("TEST YOUR MEMORY")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 10.0, green: 40.0, blue: 50.0, opacity: 1.0))
                    .underline()
                //subtitle
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
                .padding([.leading, .trailing], 20).padding(.top, 40)
                
                Spacer()
                //test if cards are flipped
                if all_flipped {
                    CardBuilder()
                    
                    Spacer()
                    
                    Button(action: {
                        self.all_flipped.toggle()
                        
                    }) {
                        Text("Flip Cards")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                            .buttonStyle(/*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
                        
                    }
                }
                    
                else {
                    
                    HStack{
                    Button(action: {
                        self.choc.append(2)
                        ZStack {
                            FirstFlipped()
                        }
                    }) {
                        Image("back").resizable().frame(maxWidth: 50, maxHeight: 75)
                    }
                    Button(action: {
                        self.choc.append(3)
                    }) {
                        Image("back").resizable().frame(maxWidth: 50, maxHeight: 75)
                    }

                    Button(action: {
                        self.choc.append(2)
                    }) {
                        Image("back").resizable().frame(maxWidth: 50, maxHeight: 75)
                    }

                    Button(action: {
                        self.choc.append(3)
                    }) {
                        Image("back").resizable().frame(maxWidth: 50, maxHeight: 75)
                    }
                    
                    }
                    
                    Spacer()
                    
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

