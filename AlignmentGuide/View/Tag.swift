//
//  Tag.swift
//  AlignmentGuide
//
//  Created by 董 亜飛 on 2023/01/13.
//

import SwiftUI

struct Tag: View {
    let text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .foregroundColor(Color(uiColor: .secondaryLabel))
            .padding(8)
            .background(Color(uiColor: .secondarySystemFill))
            .cornerRadius(8)
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag("#AAA")
    }
}
