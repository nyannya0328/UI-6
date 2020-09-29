//
//  ContentView.swift
//  Indicator
//

//  Created by にゃんにゃん丸 on 2020/09/29.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
     
    
    var body: some View {
        
        ZStack{
            Button(action: {
                self.show.toggle()
                
                
            }) {
                
                
                
                Text("Custom indicator ")
            }
            
            if self.show{
             
               
                GeometryReader{_ in
                   
                    
                }
           
                .background(Color.red.opacity(3)).edgesIgnoringSafeArea(.all)
              
                    .onTapGesture(count: 1, perform: {
                    
                    
                    self.show.toggle()
                    
                    
             
                })
                loader()
               
                }
           
                
                
            }
                
                
            }
            
            
        }
        

       
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct loader : View {
    
    
    @State var animate = false
    
    var body: some View {
        VStack{
            
            
            
            Circle().trim(from: 0, to: 0.8).stroke(AngularGradient(gradient: .init(colors: [.orange,.red]), center: .center),style: StrokeStyle(lineWidth: 8, lineCap: .round)).frame(width: 35, height: 35)
            
            
                .rotationEffect(.init(degrees: self.animate ? 360 : 0))
                .animation(Animation.linear(duration: 0.7).repeatForever(autoreverses: false))
                
            Text("please wait ....").padding(.top,20)
        }
        .padding(20)
        .background(Color.white)
        .cornerRadius(15)
        
        .onAppear {
            self.animate.toggle()
            
            
        }
        
        
        
        
        
    }
}
