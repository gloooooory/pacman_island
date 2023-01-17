//
//  ContentView.swift
//  island
//
//  Created by Victor Miranda on 15/01/23.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
    @State private var isPacmanStarted: Bool = false
    
    @State private var startTime: Date? = nil
    
    @State private var activity: Activity<PacmanAttributes>? = nil
    
    var body: some View {
        
      
        ZStack(alignment: .center){
            Image("pacmanTitle")
                .imageScale(.large)
                .offset(y:-150)
            VStack(alignment: .center){
                if !isPacmanStarted {
                    
                    Button("PRESS ENTER!", action: {
                        isPacmanStarted.toggle()
                        
                        if isPacmanStarted{
                            startTime = .now
                            
                            let attributes = PacmanAttributes()
                            let state = PacmanAttributes.ContentState(startTime: .now)
                            
                            activity = try? Activity<PacmanAttributes>.request(attributes: attributes, contentState: state, pushType: nil)
                        }
                    })
                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 0.0))
                    .font(.custom("AvenirNext-Regular", size: 20))
                    
                }else{
                    ZStack(alignment: .center){
                        GifView(fileName: "background_pacman")
                            .frame(width: 350,height: 200)
                            .offset(y: 20)
                        Image("ready")
                            .frame(height: 400)
                            .offset(y: 100)
                    }
                    
                    
                }
            }
            
        }
            
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

