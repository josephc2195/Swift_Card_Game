//
//  CardBack.swift
//  card_memory
//
//  Created by Joseph Chica on 2/17/20.
//  Copyright © 2020 Joseph Chica. All rights reserved.
//

import SwiftUI

struct CardBack: View {
    
    private var card = ["back", "C"]
    @State private var numbers = [0, 1]
    @State private var num1 = 2
    @State private var num2 = 5
    @State private var choice = 0
    
    var body: some View {
        HStack{
            Button(action: {
                self.choice = 2
            }) {
                Image("back").resizable().frame(maxWidth: 50, maxHeight: 75)
            }
            Button(action: {
                self.choice = 2
            }) {
                Image("back").resizable().frame(maxWidth: 50, maxHeight: 75)
            }

            Button(action: {
                self.choice = 2
            }) {
                Image("back").resizable().frame(maxWidth: 50, maxHeight: 75)
            }

            Button(action: {
                self.choice = 2
            }) {
                Image("back").resizable().frame(maxWidth: 50, maxHeight: 75)
            }
        }
    }
}

struct CardBack_Previews: PreviewProvider {
    static var previews: some View {
        CardBack()
    }
}
