@Entry
@Component
export struct Play {
  @State message: string = '娱乐';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('PlayHelloWorld')
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