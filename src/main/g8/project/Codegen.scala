import sbt.Keys._
import sbt._

object Codegen {

  lazy val generateModel = taskKey[Boolean]("gen-tables")
  lazy val generateModelTask = Def.sequential(
    clean,
    Def.task{
      val dir = sourceDirectory.value

      val outputDir = (dir / "main" / "scala").getPath // place generated files in sbt's sources folder

      val s = streams.value
      val cp = (dependencyClasspath in Compile).value
      val out = (sbt.Keys.`package` in Compile).value
      val files = cp.files ++ Seq(out)
      runner.value.run("ch.wsl.box.model.Migrate", files, Seq(), s.log).failed foreach (sys error _.getMessage)
      runner.value.run("ch.wsl.box.codegen.CustomizedCodeGenerator", files, Array(outputDir), s.log).failed foreach (sys error _.getMessage)
      true
    }
  )
}