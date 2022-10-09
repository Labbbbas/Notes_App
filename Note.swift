//
//  Note.swift
//  NotesApp Watch App
//
//  Created by Fernando Labastida on 08/10/22.
//

import SwiftUI

struct Note: Codable, Identifiable, Hashable{
    var id: UUID  // Genera un número hexadecimal muy grande, por lo que será único
    
    var title: String
    var creationDate: String
    
    init(title: String){
        self.id = UUID()
        self.title = title
        
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        
        self.creationDate = dateFormatter.string(from: date)
    }
}
