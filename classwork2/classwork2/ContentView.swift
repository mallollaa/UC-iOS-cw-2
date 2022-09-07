//
//  ContentView.swift
//  classwork2
//
//  Created by Manal H R Alajmi  on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var image = "qestion"
    var body: some View {
        ZStack{
            Image("sky")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
        VStack{
            Image(image)
            
             
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 150, height: 150)
                    Text("ما هو المسار المفضل لديك ")
                .font(.system(size: 30))
                .padding()
            ZStack {
                
              
                Text("IOS")
                
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.cyan)
                    .clipShape(Capsule())
                    .onTapGesture {
                        
                        image = "ios"
                            
                    }
                
            }
            
            ZStack{
               
                Text("Androuid ")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .clipShape(Capsule())
                    .onTapGesture {
                    image = "android"
                
                }
                   
                    
            }
            
            ZStack{
                Spacer()
                Text("web")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .onTapGesture {
                       image = "web"
                    }
                   
            }
            ZStack{
                Spacer()
                Text("Game dev ")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .clipShape(Capsule())
                    .onTapGesture {
                        image = "game"
                    }
            }
        }
        
        
        
            .padding()
    }
      
}
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
