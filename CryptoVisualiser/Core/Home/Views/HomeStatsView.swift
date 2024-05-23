//
//  HomeStatsView.swift
//  CryptoVisualiser
//
//  Created by Rajveer Singh on 22/05/24.
//

import SwiftUI

struct HomeStatsView: View {
    @EnvironmentObject private var vm: HomeViewModel
    @Binding var showPortfolio: Bool
    
    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width: (UIWindow.current?.bounds.width ?? 0) / 3)
            }
        }
        .frame(width: (UIWindow.current?.bounds.width),
               alignment: showPortfolio ? .trailing : .leading)
    }
}

#Preview {
    HomeStatsView(showPortfolio: .constant(false))
        .environmentObject(HomeViewModel())
}
