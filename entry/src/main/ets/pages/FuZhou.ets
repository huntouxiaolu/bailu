@Entry
@Component
export struct FuZhou {
  @State message: string = '抚州';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('FuZhouHelloWorld')
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