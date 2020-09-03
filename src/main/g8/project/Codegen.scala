import sbt.Keys._
import sbt._

object Codegen {
  lazy val generateModel = taskKey[Seq[File]]("gen-tables")
  lazy val generateModelTask = Def.task{
    val out = (sbt.Keys.`package` in Compile).value
    println(out)
    val dir = sourceDirectory.value
    val cp = (dependencyClasspath in Compile).value

    val files = cp.files ++ Seq(out)
    val s = streams.value
    val outputDir = (dir / "main" / "scala").getPath // place generated files in sbt's sources folder
    runner.value.run("ch.wsl.box.model.Migrate", files, Seq(), s.log).failed foreach (sys error _.getMessage)
    runner.value.run("ch.wsl.box.codegen.CustomizedCodeGenerator", files, Array(outputDir), s.log).failed foreach (sys error _.getMessage)
    val fname = outputDir + "/ch/wsl/box/generated/Entities.scala"
    val ffname = outputDir + "/ch/wsl/box/generated/FileTables.scala"
    val rname = outputDir + "/ch/wsl/box/generated/GeneratedRoutes.scala"
    val registryname = outputDir + "/ch/wsl/box/generated/EntityActionsRegistry.scala"
    val filename = outputDir + "/ch/wsl/box/generated/FileRoutes.scala"
    val regname = outputDir + "/ch/wsl/box/generated/GenRegistry.scala"
    Seq(file(fname),file(ffname),file(rname),file(registryname),file(filename),file(regname))    //include the generated files in the sbt project
  }
}