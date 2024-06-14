//
//  CreateBrewForm.swift
//  Coffee companion
//
//  Created by w . on 05/05/2024.
//

import SwiftData
import SwiftUI

struct CreateBrewForm: View {
    @State private var name: String = ""

    var body: some View {
        Form {
            TextField("Brew Name", text: $name)
        }
    }
}

#Preview {
    HomeView()
}
