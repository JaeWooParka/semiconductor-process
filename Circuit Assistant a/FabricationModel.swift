//
//  FabricationModel.swift
//  Circuit Assistant a
//
//  Created by 박재우 on 2/21/24.
//

import Foundation

struct Fabrication: Identifiable {
    let id = UUID()
    let name: String
    let engName: String
    let desc: String
    let image: String
}

let wafer = Fabrication(
    name: "웨이퍼 제조 공정", engName: "Wafer Fabrication", desc: "웨이퍼(Wafer)는 반도체 집적회로가 새겨지는 기판으로 실리콘을 통해 만들어 진다. 실리콘을 녹여서 둥근 기둥 잉곳(Ingot)을 제작하고 이를 얇은 두께로 절단하면, 이것이 웨이퍼 한장이 된다. 절단된 웨이퍼는 매끄럽게 표면 연마 작업을 거쳐 회로가 새겨지는 매끄러운 웨이퍼가 된다.", image: "wafer"
)
let oxidation = Fabrication(
    name: "산화공정", engName: "Oxidation", desc: "웨이퍼의 보호막이자 집적회로 사이의 절연막 역할을 하는 산화막(SiO₂)을 웨이퍼 위에 생성하는 공정이다. 식각 공정에서 회로의 모양대로 산화막은 제거되고, 산화막이 제거되어 노출된 웨이퍼 영역에 회로가 새겨진다. 이때 산화막은 부도체로서, 웨이퍼에 새겨질 회로와 회로 사이의 누설전류가 흐르는 것을 차단하는 역할을 한다. 산화막 생성은 건식 산화 혹은 습식 산화, 2가지 방식이 있으며, 건식 산화는 웨이퍼에 산소만을 노출하는 것이며, 습식 산화는 산소와 함께 수증기를 노출시킨다. 습식 산화는 수증기를 통해 건식 산화보다 빠르게 산화막 생성이 가능하며 두꺼운 산화막을 생성한다.", image: "oxidation"
)
let photolithography = Fabrication(
    name: "포토공정", engName: "Photo Lithography", desc: "웨이퍼에 회로를 그리는 공정으로 빛을 이용해 웨이퍼에 회로를 그린다. 이때 회로의 모양으로 구멍이 뚫린 포토마스크를 웨이퍼에 씌우는데, 포토마스크는 구멍이 뚫린 영역만 빛을 통과시킨다. 따라서 웨이퍼에는 포토마스크를 통과한 빛의 모양대로 회로가 그려진다. 구체적인 과정은 다음과 같다. 먼저 산화막이 생성된 웨이퍼에 빛에 반응하는 감광액(Photo resist)를 바른다. 감광액은 빛에 반응하는 물질로 빛(특히 자외선)과 만난 감광액은 제거되어 패턴이 그려진다(positive 방식).", image: "photolithography"
)
let echting = Fabrication(
    name: "식각공정", engName: "Echting", desc: "감광액이 남아있지 않는 영역(즉 회로)의 산화막을 깎아내는 공정으로, 회로를 산화막에 그리는 역할을 수행한다. 산화막을 깎아내는 방법은 크게 2가지, 건식 식각과 습식 식각으로 분류된다. 건식 식각은 가스 플라즈마를 이용하여 산화막을 제거, 습식 식각은 용액성 화학 물질을 이용하여 산화막을 제거한다. 건식 식각이 습식 식각에 비해 비용이 비싸고 까다롭지만, 습식 식각에 사용되는 화학 물질은 확산 방향성을 가지기 않기에 Fig 4. (b)처럼 undercut이 발생하는데 비해(모든 방향으로 확산함), 가스 플라즈마는 전기장을 통해 확산 방향을 지정할 수 있기에 Fig 4. (a)처럼 미세 패턴을 더 잘 그릴 수 있다. 식각 공정이 끝난 후 포토 레지스트를 모두 씻어내고, 회로의 모양대로 식각된 웨이퍼 및 산화막만을 남긴다.", image: "echting"
)
let deposition = Fabrication(
    name: "증착&이온주입공정", engName: "Deposition & Ion Implantation", desc: "순수 반도체인 실리콘에 이온을 주입하여 P형 반도체, N형 반도체를 만드는 공정을 이온 주입 공정이라고 한다. 회로의 모양대로 산화막이 깎이는데, 산화막이 깎여 노출된 실리콘 웨피어에 이온을 주입한다. 이를 통해 전기가 흐르는 회로가 실제로 웨이퍼에 새겨지게 된다. 실제 반도체 칩은 여러 층의 회로로 구성되는데, 이 회로들 사이에 미세한 막(=박막)을 만들어 회로 간의 구분과 연결, 보호 역할을 하도록 한다. 구체적으로 두 회로(소자) 사이에 전기를 통하게 하거나(전도성 박막, 금속 박막), 전기가 통하지 않게 하는(절연성 박막)을 한다. 이러한 박막을 생성하는 공정을 증착 공정이며, 박막을 얼마나 얇게 형성하는 것이 중요하다고 한다. 박막을 증착하는 방법은 크게 2가지 물리적 기상증착방법(PVD, Physical Vapor Deposition)과 화학적 기상증착방법(CVD, Chemical Vapor Deposition)으로 나뉜다. ", image: "deposition"
)
let multilevelmetallization = Fabrication(
    name: "금속배선공정", engName: "Multilevel Metallization", desc: "포토, 식각, 이온 주입, 증착 공정을 통해 웨이퍼 위에는 반도체 소자(들의 집합, 회로)가 만들어지게 된다. 이 반도체 소자는 전기적 신호에 따라 전기가 흐르거나 혹은 흐르지 않게 조절된다. 이 소자가 동작하기 위해 외부에서 전기 신호가 가해져야 하는데, 신호가 전달되는 금속선을 연결하는 작업을 금속 배선 공정이라고 한다. 대표적인 금속 배선 재료로는 알루미늄이 있다.", image: "multilevelmetallization"
)
let electricaldiesorting = Fabrication(
    name: "EDS", engName: "Electrical Die Sorting", desc: "위 공정을 통해 생산된 반도체 칩을 테스트하는 공정으로, 양품과 불량품을 선별한다. EDS 공정은 칩이 패키징 되기 전 웨피어 완성 단계에서 전기적 검사를 통해 칩이 제대로 동작하는 지를 테스트하는 공정이다. 미세한 핀이 달린 프로브 카드(Probe card)를 웨이퍼 접촉해 전기를 흘러보내는데, 이 신호를 분석하여 불량 칩을 선별하게 된다. 이를 통해 불량 칩을 선별, 불량 칩에 대한 수선을 시도, 칩 생성 공정 상의 문제점 파악 및 수정을 진행한다. 반도체의 수율은 웨이퍼 한장에 설계된 칩 개수 대비 생산된 양품의 개수로 반도체의 수율이 높아야 생산성이 높아진다. 따라서 불량 칩 선별 및 수선, 공정 상의 문제점 파악 및 수정은 반도체 생산성 향상을 위해 꼭 필요한 중요한 공정 중 하나이다. EDS 공정은 크게 4단계로 나눌 수 있다. 1. Electrical Test & Wafer Burn In : 개별 반도체 소자에 전기 신호를 보내어 동작 여부 판별. 웨이퍼에 고온, 고압 등의 스트레스를 준 상황에서 동작 여부를 판별 2. Hot / Cold Test : 특정 온도에서 반도체 소자의 동작 여부 판별 3. Repair / Final Test : 불량품에 대한 수선 시도 및 수선된 칩에 대한 최종 검증 4. Inking : 불량칩에 잉크를 찍어 육안으로 식별할 수 있도록 함. 패키징 과정에서 제외하며, 이후 공성 상의 문제점 분석에 사용", image: "electricaldiesorting"
)
let packaging = Fabrication(
    name: "패키징", engName: "Packaging", desc: "반도체 칩을 외부환경으로 보호하도록 포장하고, 전기적으로 연결할 수 있는 배선을 만들어주는 공정이다. 웨이퍼 위에 사각형 칩이 여러 개 형성되어 있는데, 이 웨이퍼를 잘라 개별 칩으로 분리한다. 이 칩을 기판 (리드프레임, PCB) 위에 접착하고 전기신호를 교환할 수 있도록 금선(전선)을 연결해준다. 최근에는 전선이 아닌 범프(금, 주석 등)를 통해 연결하는 플립 칩 방식도 사용되고 있다.", image: "packaging"
)


let fabrications = [
    wafer,
    oxidation,
    photolithography,
    echting,
    deposition,
    multilevelmetallization,
    electricaldiesorting,
    packaging
]
