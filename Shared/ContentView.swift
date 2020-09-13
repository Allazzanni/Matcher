//
//  ContentView.swift
//  Shared
//
//  Created by Matthew McAvey on 9/7/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        fetchRequest: CDUser.allUsersFetchRequest
    ) var users: FetchedResults<CDUser>
    
    var body: some View {
        return TabView(selection: .constant(1)) {
            Text("Tab Content 1")
                .tabItem { Text("Match Status") }
                .tag(1)
            ProfileView(user: users[0])
                .tabItem { Text("Profile") }
                .tag(2)
        }
    }

   
}

struct ProfileView: View {
    @State var user: User
    @State var name = "Matthew"
    @State var phoneNumber = "555-555-5555"
    
    var body: some View {
        VStack {
            TextField ("Name", text: $user.name)
            TextField ("PhoneNumber", text: $user.phoneNumber)
            Button (action: {}) {
                Text ("Select Photo")
            }
            Button (action: {}){
                Text ("Confirm")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
