//
//  CoinRowView.swift
//  CryptoHandle
//
//  Created by Noé VERNIER on 17/01/2023.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingColumn: Bool
    
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            Spacer()
            HStack (alignment: .top) {
                if showHoldingColumn {
                    centerColumn
                }
                rightColumn
            }
        }
        .font(.headline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinRowView(coin: dev.coin, showHoldingColumn: true)
                .previewLayout(.sizeThatFits)
            CoinRowView(coin: dev.coin, showHoldingColumn: true)
                .previewLayout(.sizeThatFits)
        }
            
        
    }
}

extension CoinRowView {
    
    private var leftColumn: some View {
        HStack (spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
                .fontWeight(.heavy)
            CoinImageView(coin: coin)
                .frame(width: 30, height: 30)
            VStack (alignment: .leading){
                Text(coin.symbol.uppercased())
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.theme.accent)
                Text(coin.name)
                    .font(.caption)
                    .foregroundColor(Color.theme.secondaryText)
            }.padding(6)
        }
    }
    
    private var centerColumn: some View {
        VStack (alignment: .trailing){
            Text(coin.currentHoldingValue.asCurrencyWith2Decimals())
                .fontWeight(.heavy)
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundColor(Color.theme.accent)
    }
    
    private var rightColumn: some View {
        VStack (alignment: .trailing, spacing: 3){
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
            Text(((coin.priceChangePercentage24H ?? 0) >= 0 ? "+ " : "- ") + (coin.priceChangePercentage24H ?? 0).asPercentString())
                .font(.footnote)
                .fontWeight(.bold)
                .padding(5)
                .frame(width: UIScreen.main.bounds.width/5.5, height: 25, alignment: .trailing)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .fill((coin.priceChangePercentage24H ?? 0) >= 0 ?
                              Color.green :
                                  Color.red)
                )
                .foregroundColor(Color.white)
        }
        .frame(width: UIScreen.main.bounds.width/3.5, alignment: .trailing)
    }
}
