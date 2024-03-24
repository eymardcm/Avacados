//
//  HeaderModel.swift
//  Avacados
//
//  Created by Chad Eymard on 3/23/24.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
    
    let id = UUID()
    let image: String
    let headline: String
    let subheadline: String
}
