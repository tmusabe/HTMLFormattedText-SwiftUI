//
//  ContentView.swift
//  HTMLFormattedText
//
//  Created by BS-272 on 12/7/21.
//

import SwiftUI

struct ContentView: View {
    let testText =  "<p><span style=\"color: rgb(0, 0, 0);\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t2c/1/16/1f356.png\" alt=\"?\" height=\"16\" width=\"16\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4/1/16/1f1e9_1f1f0.png\" alt=\"??\" height=\"16\" width=\"16\">Danskproduceret 1. klasses kebab<img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4/1/16/1f1e9_1f1f0.png\" alt=\"??\" height=\"16\" width=\"16\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t2c/1/16/1f356.png\" alt=\"?\" height=\"16\" width=\"16\"></span></p><p><br></p><p><span style=\"color: rgb(0, 0, 0);\">Sig ja tak til 2kg. lækker kebab, som er forarget og tilberedt.</span></p><p><br></p><p><span style=\"color: rgb(0, 0, 0);\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t45/1/16/1f6a8.png\" alt=\"?\" height=\"16\" width=\"16\">Ja tak kun 149,95<img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t45/1/16/1f6a8.png\" alt=\"?\" height=\"16\" width=\"16\"></span></p><p><br></p><p><span style=\"color: rgb(0, 0, 0);\">Nu kan du lave de lækreste sandwich, kebabmix og meget andet derhjemme</span></p>"


    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("HTML Source Text:").font(.headline).padding()
            Text(testText)

            Divider()

            Text("Formatted Text:").font(.headline).padding()
            HTMLFormattedText(testText)

            Divider()

            Text("Sourcecode:").font(.headline).padding()
            HTMLFormattedText("<b>HTMLFormattedText</b>(<i>testText</i>)")
                 .font(.system(size: 24, design: .monospaced))
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
