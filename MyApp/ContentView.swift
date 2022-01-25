//
//  ContentView.swift
//  MyApp
//
//  Created by Florian Panten / BBS2H20A BBM3H18M on 24.01.22.
//

import SwiftUI

struct WeltuhrListItem: View {
    let timeZone: TimeZone
    
    init(_ timeZone: TimeZone) {
        self.timeZone = timeZone
    }
    
    var body: some View {
        Text(timeZone.abbreviation() ?? "failure")
    }
}

struct ContentView: View {
    var timeZones: [TimeZone] = [TimeZone.current]
    var body: some View {
        TabView {
            NavigationView {
                List {
                    ForEach(timeZones, id: \.self) { timeZone in
                        WeltuhrListItem(timeZone)
                    }
                }
                .navigationTitle("Weltuhr")
                .navigationBarItems(leading: EditButton(), trailing: Button {
                    print("")
                } label: {
                    Image(systemName: "add")
                })
            }
            
                .tabItem {
                    Image(systemName: "globe")
                    Text("Weltuhr")
                }
            Text("Friends Screen")
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Wecker")
                }
            Text("Nearby Screen")
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("Stoppuhr")
                }
            Text("Nearby Screen")
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
                }
        }
        .accentColor(.orange)
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
