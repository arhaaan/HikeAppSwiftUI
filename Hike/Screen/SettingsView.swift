//
//  SettingsView.swift
//  Hike
//
//  Created by Karim Arhan on 21/03/25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
       List {
          // MARK: - SECTION: HEADER
          
          Section {
             HStack {
                Spacer()
                
                Image(systemName: "laurel.leading")
                   .font(.system(size: 80, weight: .black))
                
                VStack(spacing: -10) {
                   Text("HIKE")
                      .font(.system(size: 66,weight: .black))
                   Text("Editor's Choice")
                      .fontWeight(.medium)
                }
                
                Image(systemName: "laurel.trailing")
                   .font(.system(size: 80, weight: .black))
                
                Spacer()
             }
             .foregroundStyle(LinearGradient(
               colors: [
                  .customGrayLight,
                  .customGreenMedium,
                  .customGreenDark,
               ], startPoint: .top, endPoint: .bottom)
             )
             .padding(.top, 8)
             
             VStack(spacing: 8) {
                Text("Where can you find \nperfect tracks?")
                   .font(.title2)
                   .fontWeight(.heavy)
                
                Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                   .font(.footnote)
                   .italic()
               
                Text("Dust off the boots! It's time for a walk.")
                   .fontWeight(.heavy)
                   .foregroundColor(.customGreenMedium)
                   .frame(maxWidth: .infinity)
             }
             .multilineTextAlignment(.center)
             .padding(.bottom, 16)
          } //: HEADER
          .listRowSeparator(.hidden)
          
          // MARK: - SECTION: ICONS
         
          // MARK: - SECTION: ABOUT
          Section(
            header: Text("ABOUT THE APP"),
            footer: HStack {
               Spacer()
               Text("Copyright All right reserved.")
               Spacer()
            }) {
               // 1. Basic Labeled Content
//               LabeledContent("Application",value: "Hike")
               
               // 2. Advanced Labeled Content
               CustomListRowView(
                  rowLabel: "Application",
                  rowIcon: "apps.iphone",
                  rowContent: "HIKE",
                  rowTintColor: .blue
               )
               
               CustomListRowView(
                  rowLabel: "Compatibility",
                  rowIcon: "info.circle",
                  rowContent: "iOS, iPadOS",
                  rowTintColor: .red
               )
               
               CustomListRowView(
                  rowLabel: "Technology",
                  rowIcon: "swift",
                  rowContent: "Swift",
                  rowTintColor: .orange
               )
               
               CustomListRowView(
                  rowLabel: "Website",
                  rowIcon: "globe",
                  rowTintColor: .indigo,
                  rowLinkLabel: "Credo Academy",
                  rowLinkDestination: "https://credo.academy"
               )
            }
       }
    }
}

#Preview {
    SettingsView()
}
