//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by 조상우 on 2022/11/21.
//

import Foundation


final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
