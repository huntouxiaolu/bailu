@Entry
@Component
export struct International {
  @State message: string = '国际';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('InternationalHelloWorld')
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