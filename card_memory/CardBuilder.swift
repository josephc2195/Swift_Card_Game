//
//  CardBuilder.swift
//  card_memory
//
//  Created by Joseph Chica on 2/17/20.
//  Copyright © 2020 Joseph Chica. All rights reserved.
//

import SwiftUI

struct CardBuilder: View {

    private var card = ["back", "C"]
    @State private var numbers = [0, 1]
    @State private var num1 = Int.random(in: 2...5)
    @State private var num2 = Int.random(in: 2...5)
    
    var body: some View {
        HStack {
            
            Image(String(num1) + "C").resizable().frame(maxWidth: 50, maxHeight: 75).aspectRatio(contentMode: .fill)
            Image(String(num2) + "C").resizable().frame(maxWidth: 50, maxHeight: 75).aspectRatio(contentMode: .fill)
            Image(String(num2) + "C").resizable().frame(maxWidth: 50, maxHeight: 75).aspectRatio(contentMode: .fill)
            Image(String(num1) + "C").resizable().frame(maxWidth: 50, maxHeight: 75).aspectRatio(contentMode: .fill)
        }
    }
}

struct CardBuilder_Previews: PreviewProvider {
    static var previews: some View {
        CardBuilder()
    }
}
