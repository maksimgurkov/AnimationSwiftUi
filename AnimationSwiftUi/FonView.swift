//
//  FonView.swift
//  AnimationSwiftUi
//
//  Created by Максим Гурков on 18.05.2022.
//

import SwiftUI

struct FonView: View {
    
    @Binding var flag: Bool
    
    var body: some View {
        LinearGradient(colors: [flag ? .white : .black, .blue],
                       startPoint: .bottom,
                       endPoint: .top)
    }
}

struct FonView_Previews: PreviewProvider {
    static var previews: some View {
        FonView(flag: .constant(true))
    }
}
