//
//  ContentView.swift
//  Avacados
//
//  Created by Chad Eymard on 3/19/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    let headers: [Header] = headerData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // MARK: - HEADER
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack (alignment: .top, spacing: 0) {
                        
                        ForEach(headers) { header in
                            HeaderView(header: header)
                        }
                    } //: HSTACK
                } //: SCROLL
                
                // MARK: - DISHES
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: - FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Text("Everything you wanted to know about avocados by were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 60)
                } //: FOOTER
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                
            } //: VSTACK
        } //: SCROLL
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(.colorGreenAdaptive)
            .padding(8)
    }
}

// MARK: - PREVIEW
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
