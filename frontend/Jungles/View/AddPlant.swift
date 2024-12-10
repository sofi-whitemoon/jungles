//
//  AddPlant.swift
//  Jungles
//
//  Created by Sonia on 04.12.2024.
//

import SwiftUI

struct AddPlant: View {
    @State private var showOnlyFavorite = false
    @State private var selected = 3
    @State private var name = " "
    @State private var species = " "
    @State private var notes = " "
    
    var body: some View {
        Text("New Plant")
            .font(.largeTitle)
            .padding(.top, 150.0)
        List {
            HStack {
                Text("Plant name")
                Spacer()
                TextField("Plant name", text: $name)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            HStack {
                Text("Plant species")
                Spacer()
                TextField("Plant name", text: $species)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            
            Picker("Water once", selection: $selected) {
                ForEach(1..<30) { season in
                    Text("\(season) days").tag(season)
                }
            }
            HStack {
                Text("Notes")
                Spacer()
                TextField("notes", text: $notes)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            

        }
        .listStyle(.plain)
    }
}

#Preview {
    AddPlant()
}
