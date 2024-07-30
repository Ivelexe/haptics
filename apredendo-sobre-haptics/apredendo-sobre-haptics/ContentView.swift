//
//  ContentView.swift
//  apredendo-sobre-haptics
//
//  Created by levi soares on 24/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Clique")
                .hapticFeedback()
                .padding()
            Button(action:{
                let impact = UIImpactFeedbackGenerator(style: .heavy)
                impact.impactOccurred()
            }){
                Text("Clique").bold()
            }
        }
        
    }
}

struct ContentView_Previws: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

extension View{
    func hapticFeedback(style: UIImpactFeedbackGenerator.FeedbackStyle = .light) -> some View {
        self.onTapGesture{
            let impact = UIImpactFeedbackGenerator(style: .heavy)
            impact.impactOccurred()
        }
    }
}

#Preview {
    ContentView()
}
