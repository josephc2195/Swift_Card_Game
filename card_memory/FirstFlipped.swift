//
//  FirstFlipped.swift
//  card_memory
//
//  Created by Joseph Chica on 2/17/20.
//  Copyright © 2020 Joseph Chica. All rights reserved.
//

import SwiftUI

struct FirstFlipped: View {
    var body: some View {
        HStack {
            Image("2C").resizable().frame(maxWidth: 50, maxHeight: 75).aspectRatio(contentMode: .fill)
            
            Button(action: {
                    
            }) {
                Image("back").resizable().frame(maxWidth: 50, maxHeight: 75)
            }
            
            Button(action: {
                    
            }) {
                Image("back").resizable().frame(maxWidth: 50, maxHeight: 75)
            }
            
            Button(action: {
                    
            }) {
                Image("back").resizable().frame(maxWidth: 50, maxHeight: 75)
            }

            
        }
    }
}

struct FirstFlipped_Previews: PreviewProvider {
    static var previews: some View {
        FirstFlipped()
    }
}
