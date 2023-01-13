//
//  BasicSampleView.swift
//  AlignmentGuide
//
//  Created by 董 亜飛 on 2023/01/13.
//

import SwiftUI

struct BasicSampleView: View {
    var body: some View {
            VStack(alignment: HorizontalAlignment.center) {
                Color.red.frame(width: 1)
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
                Tag("#DDDDDDDDDDDDDDD")
                    .alignmentGuide(HorizontalAlignment.center) { context in
                        return 0
                    }
                Tag("#EEEEEEEEEE")
                    .alignmentGuide(HorizontalAlignment.center) { context in
                        return -context.width * 0.5
                    }
                Color.red.frame(width: 1)
            }
            .border(Color.gray)
            .navigationTitle("Basic Sample")
        }
}

struct BasicSampleView_Previews: PreviewProvider {
    static var previews: some View {
        BasicSampleView()
    }
}
