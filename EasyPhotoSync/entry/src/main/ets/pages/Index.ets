import { Photo } from '../common/Photo'

@Entry
@Component
struct Index {
  @State message: string = '空闲'
  @State scan: string = '扫描'
  @State notice: string = '提示'
  @State confirm: string = '确定'
  @State photos: Array<Photo> = []

  build() {
    Column() {
      // 标题
      Row() {
        Text($r("app.string.EntryAbility_label"))
          .fontSize(12)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
          .width("100%")
      }
      .width("100%")
      .height("5%")
      .backgroundColor(0x0094ff)
      // 主题
      Row() {
        Column() {
          // 提示文本
          Row() {
            Text(this.message)
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Center)
              .width("100%")
          }.width("100%").height(60).padding(10)
          // 扫描按钮
          Row() {
            Button(this.scan, { type: ButtonType.Normal }).width(("100%")).borderRadius(8)
              .onClick(() => {
                this.photos = []
                AlertDialog.show({
                  title: this.notice,
                  message: "扫描点击",
                  autoCancel: true,
                  confirm: {
                    value: this.confirm,
                    action: () => {
                      this.message = "OK"
                    }
                  }
                })
              })
          }.width("100%").height(60).padding(10)
          // 预留空间
          Row() {
          }.width("100%").height(60).padding(10)
        }.width("100%")
      }.width("100%").height("95%").backgroundColor(0xe0e0e0)
    }.width("100%")
  }
}