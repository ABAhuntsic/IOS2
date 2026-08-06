//
//  CarteVisite.swift
//  Carte de visite
//
//  Created by Arthur Bachelet on 2026-07-23.
//

import SwiftUI

struct CarteVisite: View {
    var body : some View {
            Image ( systemName : "person.crop.circle.fill" )
                .font(.system(size : 70))
                .foregroundStyle(.blue)
            Text("Jane Doe")
                .font(.title2)
                .fontWeight(.bold)
            Text("Profession - Organisation")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            (Text(Image(systemName : "envelope.fill"))
            + Text (" jane.doe@organisation.org" )
                .font(.footnote))
                .padding(.top, 5)
                .padding(.bottom, 1)
            Text(Image(systemName: "phone.fill"))
            + Text(" 514-555-0100")
                . font(.footnote)
    }
}

#Preview {
    CarteVisite()
}
