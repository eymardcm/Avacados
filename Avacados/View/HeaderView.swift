//
//  HeaderView.swift
//  Avacados
//
//  Created by Chad Eymard on 3/22/24.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    @State private var showHeadline: Bool = false
    
    var header: Header
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    // MARK: - BODY
    var body: some View {
        
        ZStack {
            Image(header.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                HStack(alignment: .top, spacing: 0) {
                    
                    Rectangle()
                        .fill(.colorGreenLight)
                        .frame(width: 4)
                    
                    VStack(alignment: .leading, spacing: 6) {
                        
                        Text(header.headline)
                            .font(.system(.title, design: .serif))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(radius: 3)
                        
                        Text(header.subheadline)
                            .font(.footnote)
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                            .shadow(radius: 3)
                    } //: VSTACK
                    .padding(.vertical, 0)
                    .padding(.horizontal, 20)
                    .frame(width: 281, height: 105)
                    .background(.colorBlackTransparentLight)
                } //: HSTACK
                .frame(width: 285, height: 105, alignment: .center)
                .offset(x: -66, y: showHeadline ? 75 : 220)
                .onAppear() {
                    withAnimation(slideInAnimation) {
                        showHeadline.toggle()
                    }
                }
            
        } //: ZSTACK
        .frame(width: 480, height: 320, alignment: .center)
    }
}

// MARK: - PREVIEW
struct HeaderView_Preview: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headerData[0])
            .previewLayout(.sizeThatFits)
    }
}
