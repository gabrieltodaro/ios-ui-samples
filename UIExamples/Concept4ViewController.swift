//
//  Concept4ViewController.swift
//  UIExamples
//
//  Created by Gabriel Patane Todaro on 06/04/22.
//

import SwiftUI

/// View Controller on SwiftUI
struct Concept4ViewController: View {
    let swiftUIDesc = """
                    SwiftUI is a user interface toolkit that lets us design apps in a declarative way. That’s a fancy way of saying that we tell SwiftUI how we want our user interface to look and work, and it figures out how to make that happen as the user interacts with it.
                    
                    Declarative UI is best understood in comparison to imperative UI, which is what iOS developers were doing before iOS 13. In an imperative user interface we might make a function be called when a button was clicked, and inside the function we’d read a value and show a label – we regularly modify the way the user interface looks and works based on what’s happening.
                    
                    Imperative UI causes all sorts of problems, most of which revolve around state, which is another fancy term meaning “values we store in our code.” We need to track what state our code is in, and make sure our user interface correctly reflects that state.
                    """
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image("swiftui")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("SwiftUI is also awesome!")
                    .font(.system(size: 24))
                    .bold()
                    .padding(.horizontal, 16)
                Text(swiftUIDesc)
                    .font(.system(size: 18))
                    .padding(16)
                Spacer()
            }
        }
        .navigationTitle("SwiftUI")
    }
}

struct Concept4ViewController_Previews: PreviewProvider {
    static var previews: some View {
        Concept4ViewController()
    }
}
