//
//  CoinRowView.swift
//  CryptoVisualiser
//
//  Created by Rajveer Singh on 27/10/23.
//

import SwiftUI

struct CoinRowView: View {
    let coin: CoinModel
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            Spacer()
            if showHoldingsColumn {
                centerColumn
            }
            rightColumn
        }
        .font(.subheadline)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinRowView(coin: previewCoins[0], showHoldingsColumn: true)
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinRowView(coin: previewCoins[0], showHoldingsColumn: true)
        .preferredColorScheme(.dark)
}

extension CoinRowView {
    private var leftColumn: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryColor)
                .frame(minWidth: 30)
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundStyle(Color.theme.accent)
        }
    }
    
    private var centerColumn: some View {
        VStack(alignment: .trailing) {
            Text("\(coin.currentHoldingsValue.asCurrencyWith2Decimals())")
                .bold()
            Text((coin.currentHoldings ?? 0.0).asNumberString())
        }
        .foregroundStyle(Color.theme.accent)
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundStyle(Color.theme.accent)
            Text((coin.priceChangePercentage24H ?? 0.0).asPercentString())
                .foregroundStyle((coin.priceChangePercentage24H ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
        }
        .frame(width: UIScreen.main.bounds.width / 2.8, alignment: .trailing)
    }
}
