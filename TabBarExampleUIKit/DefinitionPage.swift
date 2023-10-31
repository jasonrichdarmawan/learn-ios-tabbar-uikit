//
//  DefinitionPage.swift
//  TabBarExampleUIKit
//
//  Created by Jason Rich Darmawan Onggo Putra on 31/10/23.
//

import SwiftUI

struct DefinitionPage: View {
    private let id: UUID
    
    init(id: UUID = UUID()) {
        self.id = id
        print("\(type(of: self)) \(#function) \(id.uuidString)")
    }
    
    var body: some View {
        Text("Definition Page")
            .onDisappear {
                print("\(type(of: self)) \(#function) \(id.uuidString)")
            }
    }
}

#Preview {
    DefinitionPage()
}
