import {TabListType, tabList} from "../models/users"
import Connect from "./Connect"
@Entry
@Component
struct Index {

  @State
  currentIndex : number = 0

  // 创建TabItem组件
  @Builder
  TabItem(item: TabListType){
    Column(){
      Image(item.name === tabList[this.currentIndex].name ? item.selectIcon : item.icon)
        .width(20)
        .height(20)
      Text(item.title)
        .fontSize(12)
        .fontColor(item.name === tabList[this.currentIndex].name ? $r("app.color.primary") : $r("app.color.text_primary"))
        .margin({top : 5})
    }
  }

  build() {
    // 创建Tabs
    Tabs({index : $$this.currentIndex}){
      ForEach(tabList, (item : TabListType) => {
        TabContent(){
          if(item.name === "connect"){
            Connect()
          }else{
            Text(tabList[this.currentIndex].title)
          }
        }.tabBar(this.TabItem(item))
      }, (item : TabListType) => item.name.toString())

    }.barPosition(BarPosition.End)
    // .animationDuration(300)


  }
}