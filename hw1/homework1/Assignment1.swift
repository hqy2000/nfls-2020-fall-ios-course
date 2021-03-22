import SwiftUI

struct Assignment1: View {
    var body: some View {
        Text(
            "南京外国语学校（Nanjing Foreign Language School），简称“南外”，位于南京市玄武区北京东路30号，是全国首批外国语学校，是江苏省重点中学，是教育部批准的具有推荐保送生资格的外国语学校之一，也是北京大学“中学校长实名推荐制”、“博雅计划”和清华大学“领军计划”自主招生的入选学校之一。")
            .frame(width: 300)
            .font(.footnote)
            .lineLimit(3)
    }
}

struct Assignment1_Preview: PreviewProvider {
    static var previews: some View {
        Assignment1()
    }
}
