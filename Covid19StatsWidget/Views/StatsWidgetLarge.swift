//
//  StatsWidgetLarge.swift
//  Covid19StatsWidgetExtension
//
//  Created by Maarten Verbeeck on 04/10/2020.
//

import SwiftUI
import WidgetKit

struct StatsWidgetLarge: View {
    
    let entry: TotalCaseEntry
    
    var body: some View {
        VStack(spacing: 0){
            CasePieRow(totalCount: entry.totalCount, date: entry.date)
            CaseStatGrid(totalCount: entry.totalCount)
        }
        .redacted(reason: entry.isPlaceholder ? .placeholder : .init())
    }
}

struct StatsWidgetLarge_Previews: PreviewProvider {
    static var previews: some View {
        StatsWidgetLarge(entry: TotalCaseEntry.stub)
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
