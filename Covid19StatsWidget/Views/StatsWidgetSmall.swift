//
//  StatsWidgetSmall.swift
//  Covid19StatsWidgetExtension
//
//  Created by Maarten Verbeeck on 04/10/2020.
//

import SwiftUI
import WidgetKit

struct StatsWidgetSmall: View {
    
    let entry: TotalCaseEntry
    
    var body: some View {
        VStack(spacing: 0) {
            TitleDataHeader(title: entry.totalCount.title, date: entry.date)
                .padding(.vertical, 4)
                .padding(.horizontal)
            
            CaseStatView(text: "Confirmed", totalCountText: entry.totalCount.confirmedText, color: confirmedColor)
            CaseStatView(text: "Death", totalCountText: entry.totalCount.deathText, color: deathColor)
            CaseStatView(text: "Recovered", totalCountText: entry.totalCount.recoveredText, color: recoveredColor)
        }
        .redacted(reason: entry.isPlaceholder ? .placeholder : .init())
    }
}

struct StatsWidgetSmall_Previews: PreviewProvider {
    static var previews: some View {
        StatsWidgetSmall(entry: TotalCaseEntry.stub)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
