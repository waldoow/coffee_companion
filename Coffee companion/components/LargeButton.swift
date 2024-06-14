//
//  LargeButton.swift
//  Coffee companion
//
//  Created by w . on 06/05/2024.
//

import SwiftUI

struct LargeButton: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text("Save")
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    LargeButton(text: "Save") {
        print("save")
    }
}
