//
//  CreateGrinderForm.swift
//  Coffee companion
//
//  Created by w . on 06/05/2024.
//

import SwiftUI

struct CreateGrinderForm: View {
    @State private var name: String = ""
    @State private var type: GrinderType?
//    var burrs: String?
    var body: some View {
        NavigationStack {
            VStack {

            Form {
                    
                Section {
                    TextField("Varia VS3, Baratza Virtuoso, Fellow Ode...", text: $name)
                } header: {
                    Text("Grinder's name")
                } footer: {
                    Text("Please choose a name")
                }
                
                Section {
                    Picker("Type", selection: $type) {
                        ForEach(GrinderType.allCases, id: \.hashValue) { type in
                            Text(type.rawValue.capitalized)
                        }
                    }
                } header: {
                    Text("Grinder's Type")
                } footer: {
                    Text("Please choose a type")
                }
                

                
//                LargeButton(text: "Save") {
//                    print("save")
//                }
            }
                

            }
            


        }
    }
}

#Preview {
    CreateGrinderForm()
}
