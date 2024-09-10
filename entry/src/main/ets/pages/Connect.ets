import {UserInfoType, defaultUserInfoList} from "../models/connent"
@Entry
@Component
struct Connect {
  build() {
    Column(){
      Row(){
        Search({placeholder : "请输入要搜索的内容"})
          .backgroundColor(Color.White)
          .height(30)
          .borderRadius(4)
      }.padding({left : 10, right : 10})
      .margin({top : 20})

      List(){
        ForEach(defaultUserInfoList, (item:UserInfoType) => {
          ListItem(){
            Row({space : 10}){
              Image(item.avatar)
                .width(30)
                .height(30)
                .borderRadius(4)

              Column(){
                Text(item.username)
                  .fontSize(12)
                  .fontColor($r("app.color.text_primary"))
              }.layoutWeight(1)
              .alignItems(HorizontalAlign.Start)
              .justifyContent(FlexAlign.Center)
            }
          }.height(60)
          .padding({left :10, right : 10})
          .backgroundColor($r("app.color.white"))
        }, (item:UserInfoType) => item.user_id)
      }

    }.height("100%")
    .backgroundColor($r("app.color.back_color"))

  }
}

export default Connect