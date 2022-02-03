//
//  QuoteModelView.swift
//  quotesChallenge16
//
//  Created by Hamed Mohamed on 17/12/2021.
//

import Foundation
class quoteModelView: ObservableObject{
    
    @Published  var quoteArray = [QutesModel]()
    
    init(){
        
        self.quoteArray = dataService.getLocalData()
    }
}
 
