//
//  ContentView.swift
//  quotesChallenge16
//
//  Created by Hamed Mohamed on 17/12/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = quoteModelView()
    
    var body: some View {
        NavigationView {
            List(model.quoteArray) { r in
                NavigationLink(destination: quotesView(quote: r)) {
                    ZStack{
                        Text("hello github")
                        Image(r.image).resizable(resizingMode: .stretch).scaledToFill().cornerRadius(20)
                        VStack(spacing: 10.0){
                            Text(r.quotes[0])
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .lineLimit(nil)
                                .padding(.horizontal, 15.0)
                            
                            Text(r.person)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Text("anothor person")
                        }
                        
                    }
                }
                // MARK: Row item
                
                        
            }.navigationBarTitle("QUOTES")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
