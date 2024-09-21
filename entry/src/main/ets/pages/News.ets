
import { NewsItabBar } from '../models/News'
import { FuZhou } from './FuZhou'
import { HotQuestion } from './HotQuestion'
import { ImportantNews } from './ImoortantNews'
import { International } from './International'
import { Play } from './Play'

@Entry
@Component
export struct News {
  @State TabsData: NewsItabBar[] = [
    {txt: '7x24', name: '7x24'},
    {txt: '要闻', name: 'ImportantNews'},
    {txt: '热问', name: 'HotQuestion'},
    {txt: '抚州', name: 'FuZhou'},
    {txt: '国际', name: 'International'},
    {txt: '娱乐', name: 'Play'}
    ]

  @State currentTab: string = 'ImportantNews'

  @Builder tabbarBuilder(item: NewsItabBar){
    Column(){
        Text(item.txt)
          .fontWeight(this.currentTab == item.name ? 600 : 300)
        Text()
          .width(20)
          .margin({top: 2})
          .border({width: 2, radius: 2 , color: this.currentTab == item.name ? '#3479FC' : '#F7F7F7'})


    }
  }

  @Builder totalchannel (){
    Column(){
      Image($r('app.media.pinglun'))
        .width(20)
      Text()
        .width(20)
        .margin({top: 2})
        .border({width: 2, radius: 2 , color: '#F7F7F7'})
    }
  }

  build() {
    Column() {
      //搜索
      Row({space: 5}){
        Image('http://inews.gtimg.com/newsapp_bt/0/0823174228952_9554/0')
          .width(50)
        Text('|')
          .fontColor('#F1F1F1')
        Image($r('app.media.daohanglansousuo'))
          .width(10)
          .fillColor('#5E5E5E')
        TextInput({placeholder: '全红婵回母校拜访恩师'})
          .layoutWeight(1)
          .backgroundColor('#fff')
      }
      .width('100%')
      .border({width: 1 , radius: 25, color: '#fff'})
      .backgroundColor('#fff')
      .padding({left: 10, right: 10})

      //标题
      Tabs(){
        ForEach(this.TabsData,(item: NewsItabBar) => {
          TabContent(){
            if (this.currentTab == 'ImportantNews') {
              ImportantNews()
            }else if (this.currentTab == 'HotQuestion') {
              HotQuestion()
            }else if (this.currentTab == 'FuZhou') {
              FuZhou()
            }else if (this.currentTab== 'International') {
              International()
            }else if (this.currentTab == 'Play') {
              Play()
            }
          }
            .tabBar(this.tabbarBuilder(item))
        })
        //全部频道，尚未实现
        TabContent(){}
        .tabBar(this.totalchannel())
      }
      .onChange((index) => {
          this.currentTab = this.TabsData[index].name
      })
      .backgroundColor('#F7F7F7')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F7F7F7')
    .padding({left: 10, right: 10, top: 10})
  }
}