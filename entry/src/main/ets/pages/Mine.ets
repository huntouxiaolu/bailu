@Entry
@Component
export struct Mine {
  @State message: string = '我的';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('MineHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}