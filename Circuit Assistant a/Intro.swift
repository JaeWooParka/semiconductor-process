//
//  Intro.swift
//  Circuit Assistant a
//
//  Created by 박재우 on 2/21/24.
//

import SwiftUI

struct Intro: View {
    
    var body: some View {
            NavigationStack{
                Image("Semi")
            VStack {
                Text("반도체는 전기를 조절하여 정보를 처리하고 저장하는 데 사용되는 물질로, 주로 실리콘으로 만들어진다. 트랜지스터라는 소자를 사용하여 전류를 제어하고, 이를 통해 디지털 신호를 처리한다. 반도체는 현대 전자 제품의 핵심 부품으로 사용되며, 컴퓨터, 휴대전화, 자동차 등 다양한 기기에서 중요한 역할을 한다.")
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 15)
                    NavigationLink(destination: {
                        SecondView(fabrications: fabrications)
                    },label:{
                        Text ("공정보기")
                            .font(.system(size: 25))
                    })
                    
                    .navigationTitle("semiconductor")
                    
            }
        }
    }
}
#Preview {
    Intro()
}
