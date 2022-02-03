//
//  parseData.swift
//  quotesChallenge16
//
//  Created by Hamed Mohamed on 17/12/2021.
//

import Foundation
class dataService{
    static func getLocalData() -> [QutesModel] {
        
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        guard pathString != nil else {
            return [QutesModel]()
        }
        let url = URL(fileURLWithPath: pathString!)

        do{
            let data = try Data(contentsOf: url)
            
            let decode = JSONDecoder()
            
            do{
                let quoteData = try decode.decode([QutesModel].self, from: data)
                
                for item in quoteData {
                    item.id = UUID()
                }
                return quoteData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return [QutesModel]()
    }
}
