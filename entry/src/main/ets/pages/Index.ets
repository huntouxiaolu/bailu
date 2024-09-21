import { ItabBar } from '../models'
import { Focus } from './Focus'
import { Mine } from './Mine'
import { News } from './News'
import { Videos } from './Videos'

@Entry
@Component
struct Index {

  @State currentTab: string = 'News'

  @State TabsData: ItabBar[] = [
    {icon: $r('app.media.daohanglan'), txt: '新闻', name: 'News'},
    {icon: $r('app.media.daohanglansousuo'), txt: '视频', name: 'Videos'},
    {icon: $r('app.media.duolanmingxizhang'), txt: '关注', name: 'Focus'},
    {icon: $r('app.media.pinglun'), txt: '我的', name: 'Mine'}
  ]

  @Builder
  tabbarbuilder(item: ItabBar) {
    Column() {
      Image(item.icon)
        .width(22)
        .fillColor(this.currentTab == item.name ? '#EE5C89' : '#69A5AA')
      Text(item.txt)
        .margin({ top: 7 })
        .fontSize(14)
        .fontColor(this.currentTab == item.name ? '#EE5C89' : '#69A5AA')
    }
  }

  build() {
    Column() {
      Tabs({barPosition: BarPosition.End}){
        ForEach(this.TabsData,(item: ItabBar) => {
          TabContent(){
            if(this.currentTab == 'News'){
              News()
            } else if(this.currentTab == 'Videos'){
              Videos()
            }else if(this.currentTab == 'Focus'){
              Focus()
            }else if(this.currentTab == 'Mine'){
              Mine()
            }
          }
          .tabBar(this.tabbarbuilder(item))
        })
      }
      .onChange((index) => {
        this.currentTab = this.TabsData[index].name
      })
    }
    .height('100%')
    .width('100%')
  }
}