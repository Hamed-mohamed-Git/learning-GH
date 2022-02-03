//
//  quotesView.swift
//  quotesChallenge16
//
//  Created by Hamed Mohamed on 18/12/2021.
//

import SwiftUI

struct quotesView: View {
    var quote:QutesModel
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                //MARK: image
                    Image(quote.imagePerson).resizable().scaledToFill()
                //MARK: QOUTES
                VStack(alignment: .leading){
                    Text("Quotes")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding(.vertical, 20.0)
                    VStack(alignment: .leading){
                        ForEach(0..<quote.quotes.count,id: \.self){
                            item in
                            Text(String(item + 1) + " " + quote.quotes[item])
                                .font(.title3)
                                
                        }
                        .padding(.bottom)
                    }
                    .padding(.leading, 20.0)
                }
                .padding([.top, .leading, .trailing], 15.0)
            }
        }.navigationBarTitle(quote.person)
    }
}

struct quotesView_Previews: PreviewProvider {
    static var previews: some View {
        let model = quoteModelView()
        quotesView(quote: model.quoteArray[0])
    }
}
