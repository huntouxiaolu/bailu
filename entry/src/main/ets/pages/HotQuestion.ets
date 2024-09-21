@Entry
@Component
export struct HotQuestion {
  @State message: string = '热问';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HotQuestionHelloWorld')
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