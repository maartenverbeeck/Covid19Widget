//
//  StatsWidgetMedium.swift
//  Covid19StatsWidgetExtension
//
//  Created by Maarten Verbeeck on 04/10/2020.
//

import SwiftUI
import WidgetKit

struct StatsWidgetMedium: View {
    
    let entry: TotalCaseEntry
    
    var body: some View {
        VStack(spacing: 0) {
            TitleDataHeader(title: entry.totalCount.title, date: entry.date)
                .padding(.vertical, 4)
                .padding(.horizontal)
            CaseStatGrid(totalCount: entry.totalCount)
        }
        .redacted(reason: entry.isPlaceholder ? .placeholder : .init())
    }
}

struct StatsWidgetMedium_Previews: PreviewProvider {
    static var previews: some View {
        StatsWidgetMedium(entry: TotalCaseEntry.stub)
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
