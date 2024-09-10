export class TabListType {
  icon : ResourceStr = ""
  name : string = ""
  title : string = ""
  selectIcon : ResourceStr = ""
}

export const tabList: TabListType[] = [
  {
    icon: $r('app.media.ic_public_message'),
    name: 'wechat',
    title: '微信',
    selectIcon: $r('app.media.ic_public_message_filled')
  },
  {
    icon: $r('app.media.ic_public_contacts_group'),
    name: 'connect',
    title: '联系人',
    selectIcon:  $r('app.media.ic_public_contacts_group_filled')
  },
  {
    icon: $r('app.media.ic_gallery_discover'),
    name: 'discover',
    title: '发现',
    selectIcon: $r('app.media.ic_gallery_discover_filled')
  },
  {
    icon: $r('app.media.ic_public_contacts'),
    name: 'my',
    title: '我的',
    selectIcon: $r('app.media.ic_public_contacts_filled')
  }
]