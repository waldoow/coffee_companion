//
//  GroupBoxStyles.swift
//  Coffee companion
//
//  Created by w . on 05/05/2024.
//

import SwiftUI

struct BrewGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading, spacing: 20) {
            configuration.label
                .font(.headline)
                .foregroundStyle(.pink)
            configuration.content
        }
        .padding()
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 12))
        .fontDesign(.monospaced)
    }
}

extension GroupBoxStyle where Self == BrewGroupBoxStyle {
    static var brew: BrewGroupBoxStyle { .init() }
}
