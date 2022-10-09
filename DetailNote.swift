//
//  DetailNote.swift
//  NotesApp Watch App
//
//  Created by Fernando Labastida on 08/10/22.
//

import SwiftUI

struct DetailNote: View {
    
    let note: Note
    
    var body: some View {
        VStack{
            Text(note.title)
                .font(.system(size: 20))
                .foregroundColor(.white)
            
            Spacer()
            Text(note.creationDate)
                .font(.system(size: 12))
                .fontWeight(.bold)
        }
    }
}

struct DetailNote_Previews: PreviewProvider {
    static var previews: some View {
        DetailNote(note: Note(title: "Hola nota"))
    }
}
