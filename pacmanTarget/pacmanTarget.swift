//
//  pacman.swift
//  pacman
//
//  Created by Victor Miranda on 16/01/23.
//

import WidgetKit
import ActivityKit
import SwiftUI
import Intents

struct pacmanTarget: Widget{
    
   @State var assetPositionX: CGFloat = 20
  
  var body: some WidgetConfiguration{
      ActivityConfiguration(for: PacmanAttributes.self){ context in
          PacmanTrackingWidgetView(context: context)
      
      } dynamicIsland: { context in
             DynamicIsland{
                 DynamicIslandExpandedRegion(.center) {
                     //Image("dynamic_pacman")
                     VStack{
                         Image("pacman_game")
                         HStack{
                             Image("lives")
                             Spacer()
                             Image("score")
                         }
                     }
                     
                 }
             }
              compactLeading: {
                  Image("pacman")
                      .resizable()
                      .frame(width: 16,height: 16)
                      .aspectRatio(1/1, contentMode: .fit)
                      
              }
              compactTrailing: {
                  Image("cherry")
              }
              minimal: {
                  //Text("M")
              }
      }
  }
}

struct PacmanTrackingWidgetView: View {
  let context: ActivityViewContext<PacmanAttributes>
  
  var body: some View {
      Text(context.state.startTime ?? .now, style: .relative)
          .foregroundColor(Color.white)
      
  }
}


