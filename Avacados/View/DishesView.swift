//
//  DishesView.swift
//  Avacados
//
//  Created by Chad Eymard on 3/23/24.
//

import SwiftUI

struct DishesView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        HStack (alignment: .center, spacing: 4) {
            // First column
            VStack (alignment: .leading, spacing: 4) {
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                } //: HSTACK
                Divider()
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                } //: HSTACK
                Divider()
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                } //: HSTACK
                Divider()
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                } //: HSTACK
            } //: VSTACK
            
            // Second column
            VStack (alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(.title)
                    .fontWeight(.ultraLight)
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            } //: VSTACK
            
            // Third column
            VStack (alignment: .trailing, spacing: 4) {
                
                HStack {
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                Divider()
                HStack {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                Divider()
                HStack {
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                Divider()
                HStack {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
            } //: VSTACK
        } //: HSTACK
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

// MARK: - PREVIEW
struct DishesView_Preview: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
