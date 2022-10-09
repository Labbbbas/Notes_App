//
//  ListNotes.swift
//  NotesApp Watch App
//
//  Created by Fernando Labastida on 08/10/22.
//

import SwiftUI

struct ListNotes: View {
    
    @State private var notes = [Note]()
    
    var body: some View {
        
        VStack{
            Text("Notas \(notes.count)")
            List{
                ForEach(0..<notes.count, id: \.self) { i in
                    NavigationLink(
                        destination: DetailNote(note: notes[i]),
                        label: {
                            Text(notes[i].title)
                                .lineLimit(1)
                    })
                }
                .onDelete(perform: delete)
            }
        }
        .onAppear(perform: {
            notes = Tools.shared.load()
        })
    }
        
    
    func delete(offsets: IndexSet){
        withAnimation{
            notes.remove(atOffsets: offsets)
        }
        Tools.shared.save(array: notes)
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
