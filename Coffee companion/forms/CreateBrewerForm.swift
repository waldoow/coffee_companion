//
//  CreateBrewerForm.swift
//  Coffee companion
//
//  Created by w . on 05/05/2024.
//

import SwiftUI

struct CreateBrewerForm: View {
    @State private var name: String = ""
    @State private var type: CoffeeBrewerType = .dripCoffeeMaker
    @Environment(\.modelContext) var context

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("V60, Aeropress, Lelit Bianca V3...", text: $name)
                } header: {
                    Text("Brewer name")
                } footer: {
                    if name.isEmpty {
                        Text("please chose a name")
                            .foregroundStyle(.red)
                    }
                }

                Picker("Type", selection: $type, content: {
                    ForEach(CoffeeBrewerType.allCases, id: \.rawValue) { type in
                        Text(type.rawValue.capitalized)
                    }
                })
            }

            Button {
                print("Save")
            } label: {
                Text("Save")
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .disabled(!isFormValid)
            .navigationTitle("Create new brewer")
        }
    }
    
    private func save() {
        if isFormValid {
            let brewer = Brewer(name: name, type: type)
            
            context.insert(brewer)
        }
    }
    
    private var isFormValid: Bool {
        !name.isEmpty
    }
}

#Preview {
    CreateBrewerForm()
}
