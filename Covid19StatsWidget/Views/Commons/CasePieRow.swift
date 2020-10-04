//
//  CasePieRow.swift
//  Covid19StatsWidgetExtension
//
//  Created by Maarten Verbeeck on 04/10/2020.
//

import SwiftUI
import WidgetKit

struct CasePieRow: View {
    
    let totalCount: TotalCaseCount
    let date: Date
    
    var body: some View {
        HStack{
            PieChartView(
                data: [
                    (Double(totalCount.recovered), recoveredColor),
                    (Double(totalCount.sick), sickColor),
                    (Double(totalCount.death), deathColor)
                ],
                form: .init(width: 200, height: 160)
            )
            VStack(spacing: 16) {
                VStack(spacing: 2) {
                    Text(totalCount.title)
                        .font(.system(size: 25, weight: .semibold))
                    Text(date, style: .time)
                        .font(.system(size: 12, weight: .semibold))
                }
                VStack {
                    Text(totalCount.recoveryRateText)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(recoveredColor)
                    Text("Recovery Rate")
                        .font(.system(size: 10, weight: .regular))
                }
                VStack {
                    Text(totalCount.fataliityRateText)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(deathColor)
                    Text("Fatality Rate")
                        .font(.system(size: 10, weight: .regular))
                }
                
                
                
            }.padding(.trailing)
        }
        .padding()
    }
}

struct CasePieRow_Previews: PreviewProvider {
    static var previews: some View {
        CasePieRow(totalCount: .init(title: "Global", confirmed: 200, death: 10, recovered: 100), date: Date())
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
