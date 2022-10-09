//
//  ContentView.swift
//  NotesApp Watch App
//
//  Created by Fernando Labastida on 08/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink("Agregar Nota", destination: AddNote())
                NavigationLink("Listar Notas", destination: ListNotes())
            }
        }
        .navigationTitle("Notes App")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
