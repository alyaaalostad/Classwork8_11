//
//  ScrollView.swift
//  Classwork8_11
//
//  Created by Alyaa AlOstad on 5/6/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//

import SwiftUI

struct UserScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 0){
                Image("Harry").resizable().scaledToFill()
                Image("Hermione").resizable().scaledToFill()
                Image("Doc").resizable().scaledToFill()
                Image("Neo").resizable().scaledToFill()
                Image("Marty").resizable().scaledToFill()
            }.frame(height:250)
        }
                .edgesIgnoringSafeArea(.all)
                .background(Color.black.edgesIgnoringSafeArea(.all))
        
    }
}

struct ScrollViews_Previews: PreviewProvider {
    static var previews: some View {
        UserScrollView()
    }
}
