//
//  TitleDataHeader.swift
//  Covid19StatsWidgetExtension
//
//  Created by Maarten Verbeeck on 04/10/2020.
//

import SwiftUI
import WidgetKit

struct TitleDataHeader: View {
    
    let title: String
    let date: Date
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 16, weight: .semibold))
            Text(date, style: .time)
        }.lineLimit(1)
        .minimumScaleFactor(0.7)
    }
}

struct TitleDataHeader_Previews: PreviewProvider {
    static var previews: some View {
        TitleDataHeader(title: "Global", date: Date())
            .previewContext(WidgetPreviewContext(family: .systemSmall))
  
    }
}
