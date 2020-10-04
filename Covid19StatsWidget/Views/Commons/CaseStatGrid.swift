//
//  CaseStatGrid.swift
//  Covid19StatsWidgetExtension
//
//  Created by Maarten Verbeeck on 04/10/2020.
//

import SwiftUI
import WidgetKit

struct CaseStatGrid: View {
    
    let totalCount: TotalCaseCount
    let columns: [GridItem] = [
        .init(.flexible(), spacing: 0),
        .init(.flexible(), spacing: 0)
    ]
    
    var body: some View {
            VStack {
                GeometryReader { proxy in
                    LazyVGrid(columns: columns, spacing: 0) {
                        CaseStatView(text: "Confirmed", totalCountText: totalCount.confirmedText, color: confirmedColor, height: proxy.size.height / 2)
                        CaseStatView(text: "Deaths", totalCountText: totalCount.deathText, color: deathColor, height: proxy.size.height / 2)
                        CaseStatView(text: "Sick", totalCountText: totalCount.sickText, color: sickColor, height: proxy.size.height / 2)
                        CaseStatView(text: "Recovered", totalCountText: totalCount.recoveredText, color: recoveredColor, height: proxy.size.height / 2)
                    }
                }
            }
        }
    }

struct CaseStatGrid_Previews: PreviewProvider {
    static var previews: some View {
        CaseStatGrid(totalCount: .init(title: "Global", confirmed: 200, death: 5, recovered: 100))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
