//
//  MarketDataModel.swift
//  CryptoHandle
//
//  Created by Noé VERNIER on 19/01/2023.
//

import Foundation

/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 12487,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 640,
     "total_market_cap": {
       "btc": 48044624.58510221,
       "eth": 652580895.9967965,
       "ltc": 12051591900.423555,
       "bch": 8284448682.649242,
       "bnb": 3459775676.5270596,
       "eos": 1030199722587.9423,
       "xrp": 2581212823685.2383,
       "xlm": 12048229829726.137,
       "link": 156380438280.32944,
       "dot": 174257551589.89157,
       "yfi": 151658171.70888695,
       "usd": 1004606218207.1527,
       "aed": 3689948777661.4253,
       "ars": 183934781041590.16,
       "aud": 1455130918218.1143,
       "bdt": 104288190599603.03,
       "bhd": 378723484383.2607,
       "bmd": 1004606218207.1527,
       "brl": 5230381814473.721,
       "cad": 1353395451106.496,
       "chf": 920846170157.914,
       "clp": 829302433130005.5,
       "cny": 6807714037680.795,
       "czk": 22248074607819.805,
       "dkk": 6918371412616.291,
       "eur": 929824335930.0344,
       "gbp": 813412576576.6246,
       "hkd": 7866719682603.837,
       "huf": 367490928008750.5,
       "idr": 15234134012109948,
       "ils": 3432887124727.925,
       "inr": 81634793548560.11,
       "jpy": 129175281355730.42,
       "krw": 1242043073515522.2,
       "kwd": 306782628491.2279,
       "lkr": 368694117751929.2,
       "mmk": 2109694180080762.2,
       "mxn": 19063545227750.84,
       "myr": 4327843588036.424,
       "ngn": 462622535776488.7,
       "nok": 9967926924238.07,
       "nzd": 1571835017981.026,
       "php": 54997924888839.03,
       "pkr": 230986176311426.25,
       "pln": 4390242694067.9214,
       "rub": 69522921424952.91,
       "sar": 3774060437887.0356,
       "sek": 10387644369961.477,
       "sgd": 1329835426077.1038,
       "thb": 33131913076471.945,
       "try": 18883885470111.58,
       "twd": 30489755524519.758,
       "uah": 36920715106004.945,
       "vef": 100591220629.08217,
       "vnd": 23557423906992430,
       "zar": 17384358993898.416,
       "xdr": 744225346328.6962,
       "xag": 42490824605.28979,
       "xau": 522797075.9550034,
       "bits": 48044624585102.21,
       "sats": 4804462458510221
     },
     "total_volume": {
       "btc": 3751189.853503825,
       "eth": 50951690.3668904,
       "ltc": 940954573.916181,
       "bch": 646826572.3500576,
       "bnb": 270129603.99345016,
       "eos": 80435111728.45442,
       "xrp": 201533874758.26868,
       "xlm": 940692072843.5671,
       "link": 12209747051.401693,
       "dot": 13605542036.498983,
       "yfi": 11841045.6909205,
       "usd": 78436842519.81973,
       "aed": 288100875680.574,
       "ars": 14361113034143.877,
       "aud": 113612550479.41557,
       "bdt": 8142530112282.522,
       "bhd": 29569669951.01934,
       "bmd": 78436842519.81973,
       "brl": 408373576895.18945,
       "cad": 105669329874.2761,
       "chf": 71897092337.8873,
       "clp": 64749613500111.25,
       "cny": 531527263335.56024,
       "czk": 1737067412838.6926,
       "dkk": 540167081539.1167,
       "eur": 72598082399.48717,
       "gbp": 63508977961.9754,
       "hkd": 614211460877.826,
       "huf": 28692663379215.723,
       "idr": 1189438556896630.8,
       "ils": 268030221106.07498,
       "inr": 6373816257213.383,
       "jpy": 10085644521725.986,
       "krw": 96975247808073.2,
       "kwd": 23952729221.332504,
       "lkr": 28786605067706.953,
       "mmk": 164719018426235.7,
       "mxn": 1488428269503.5254,
       "myr": 337905917575.38416,
       "ngn": 36120273125103.93,
       "nok": 778267842897.5365,
       "nzd": 122724480038.10089,
       "php": 4294084085126.785,
       "pkr": 18034754321875.703,
       "pln": 342777865174.81744,
       "rub": 5428155172141.663,
       "sar": 294668078757.3883,
       "sek": 811038206644.4183,
       "sgd": 103829829043.50142,
       "thb": 2586847066303.658,
       "try": 1474400938334.6536,
       "twd": 2380554797692.3047,
       "uah": 2882666127288.182,
       "vef": 7853881041.509546,
       "vnd": 1839297742415910.8,
       "zar": 1357322106910.5994,
       "xdr": 58107032617.63527,
       "xag": 3317564691.2183,
       "xau": 40818532.84731427,
       "bits": 3751189853503.825,
       "sats": 375118985350382.5
     },
     "market_cap_percentage": {
       "btc": 40.10192225744709,
       "eth": 18.485378002411064,
       "usdt": 6.6201716923201985,
       "usdc": 4.295712895285206,
       "bnb": 3.898930176842139,
       "xrp": 1.9643194913912976,
       "busd": 1.6239779083956776,
       "ada": 1.1689652199477623,
       "doge": 1.1159982528450538,
       "matic": 0.8387085985159723
     },
     "market_cap_change_percentage_24h_usd": -2.917465211991837,
     "updated_at": 1674142443
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]?
    let marketCapChangePercentage24HUsd: Double?
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap?.first(where: { $0.key == "usd" }) {
            return item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume?.first(where: { $0.key == "usd" }) {
            return item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage?.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
