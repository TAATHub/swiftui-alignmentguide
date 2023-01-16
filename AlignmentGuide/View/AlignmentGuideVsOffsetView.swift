//
//  AlignmentGuideVsOffset.swift
//  AlignmentGuide
//
//  Created by 董 亜飛 on 2023/01/16.
//

import SwiftUI

struct AlignmentGuideVsOffsetView: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(alignment: HorizontalAlignment.center) {
                Tag("#AAA")
                    .alignmentGuide(HorizontalAlignment.center) { context in
                        return context.width * 2
                    }
                Tag("#BBBBBBBBBB")
                    .alignmentGuide(HorizontalAlignment.center) { context in
                        context[HorizontalAlignment.trailing]
                    }
                Tag("#CCCCC")
                    .alignmentGuide(HorizontalAlignment.center) { context in
                        context[HorizontalAlignment.center]
                    }
            }
            .border(Color.gray)
            
            VStack(alignment: HorizontalAlignment.center) {
                Tag("#AAA")
                    .offset(x: -50, y: 0)
                Tag("#BBBBBBBBBB")
                    .offset(x: -30, y: 0)
                Tag("#CCCCC")
                    .offset(x: 40, y: 0)
            }
            .border(Color.gray)
        }
        .navigationTitle("Alignment Guide vs. Offset")
    }
}

struct AlignmentGuideVsOffset_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuideVsOffsetView()
    }
}
