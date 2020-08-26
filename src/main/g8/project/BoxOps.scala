import sbt.Keys._
import sbt._

object BoxOps {
  lazy val installBox = taskKey[Unit]("Install box schema")
  lazy val installBoxTask = Def.task{
    (runMain in Compile).toTask(" ch.wsl.box.model.BuildBox").value
  }

  lazy val dropBox = taskKey[Unit]("Drop box schema")
  lazy val dropBoxTask = Def.task{
      (runMain in Compile).toTask(" ch.wsl.box.model.DropBox").value
  }

}