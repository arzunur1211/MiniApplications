//
//  MiniApps.swift
//  Application
//
//  Created by Aita Macbook on 9/5/24.
//

import Foundation
struct MiniApps {
    let name: String
}
extension MiniApps {
    static func getMiniAppslist() -> [MiniApps] {
        return [
        MiniApps(name: "Светофор"),
        MiniApps(name: "Цвет заливки"),
        MiniApps(name: "Светофор"),
        MiniApps(name: "Цвет заливки"),
        MiniApps(name: "Светофор"),
        MiniApps(name: "Цвет заливки"),
        MiniApps(name: "Светофор"),
        MiniApps(name: "Цвет заливки"),
        MiniApps(name: "Светофор"),
        MiniApps(name: "Цвет заливки")
        ]
    }
}
