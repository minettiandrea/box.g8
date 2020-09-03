import boxAppInfo.BoxAppBuildInfo

object Serve extends App {
  ch.wsl.box.rest.Boot.main(Array(BoxAppBuildInfo.name,BoxAppBuildInfo.version))
}