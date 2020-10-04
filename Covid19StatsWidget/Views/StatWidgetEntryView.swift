//
//  StatWidgetEntryView.swift
//  Covid19StatsWidgetExtension
//
//  Created by Maarten Verbeeck on 04/10/2020.
//

import SwiftUI
import WidgetKit

struct StatWidgetEntryView: View {
    
    let entry: TotalCaseEntry
    @Environment(\.widgetFamily) var family
    
    var body: some View {
        switch family {
        case .systemSmall:
            StatsWidgetSmall(entry: entry)
        case .systemLarge:
            StatsWidgetLarge(entry: entry)
        default:
            StatsWidgetMedium(entry: entry)
        }
    }
}

struct StatWidgetEntryView_Previews: PreviewProvider {
    static var previews: some View {
        StatWidgetEntryView(entry: TotalCaseEntry.stub)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
