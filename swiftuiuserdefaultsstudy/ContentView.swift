//
//  ContentView.swift
//  swiftuiuserdefaultsstudy
//
//  Created by kenan on 27.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!").onAppear{
                let ud = UserDefaults.standard
                let cities = ["ankara","istanbul"]
              
                let users = ["1":"Kenan","2":"Ahmet","3":"Ahmet"]
                
                ud.set("Kenan",forKey: "ad")
                ud.set(23,forKey: "age")
                ud.set(1.78,forKey: "height")
                ud.set(false,forKey:"isMarried")
                ud.set(cities,forKey: "cities")
                ud.set(users,forKey: "users")
                let name = ud.string(forKey: "ad") ?? "NA"
                let age = ud.integer(forKey: "age")
                let height = ud.double(forKey: "height")
                let isMarried = ud.bool(forKey: "isMarried")
                //ud.removeObject(forKey: "ad")
                print("Name: \(name)")
                print("Age: \(age)")
                print("Height: \(height)")
                print("isMarried: \(isMarried)")
                
                
              
                let cityList = ud.array(forKey: "cities") ?? [String]()
                for city in cities{
                    print("City Name: \(city)")
                }
                
                let udUsers = ud.dictionary(forKey: "users") ?? [String:String]()
                for (key,value) in udUsers{
                    print("ID \(key)  \(value)")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
