//
//  Covid19StatsWidget.swift
//  Covid19StatsWidget
//
//  Created by Maarten Verbeeck on 04/10/2020.
//

import WidgetKit
import SwiftUI


@main
struct Covid19StatsWidget: Widget {
    let kind: String = "Covid19StatsWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: GlobalTotalStatsTimelineProvider()) { entry in
            StatWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Covid19-stats")
        .description("Show latest global lifetime stats.")
    }
}

struct Covid19StatsWidget_Previews: PreviewProvider {
    static var previews: some View {
        StatWidgetEntryView(entry: TotalCaseEntry.stub)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
