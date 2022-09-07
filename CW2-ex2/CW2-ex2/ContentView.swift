//
//  ContentView.swift
//  CW2-ex2
//
//  Created by Manal H R Alajmi  on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var kwd = ""
    
    var body: some View {
        
            VStack{
            
                Text(" محول العملات العجيب ! ")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.black)
                TextField("العمله بالدينار", text: $kwd)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    
            .padding()
          
                HStack{
                    Image("UK")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 50)
                    Text("\((Double(kwd) ?? 0.0 ) * 3.28)$ ")
                        
                    
                }
                
            HStack{
                Image("USA")
                    .resizable()
                    .frame(width: 70, height: 100)
                Text("\((Double(kwd) ?? 0.0 ) * 2.46) £ ")
                
            }
                HStack{
                Image("ur")
                    .resizable()
                    .frame(width: 70, height: 50)
                    Text("\((Double(kwd) ?? 0.0 ) * 2.70) €")
            }
                .padding()
                Image("exchange")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
