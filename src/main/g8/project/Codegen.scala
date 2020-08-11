import sbt.Keys._
import sbt._

object Codegen {
  lazy val slick = taskKey[Seq[File]]("gen-tables")
  lazy val slickCodeGenTask = Def.task{
    val out = (sbt.Keys.`package` in Compile).value
    println(out)
    val dir = sourceManaged.value
    val cp = (dependencyClasspath in Compile).value

    val files = cp.files ++ Seq(out)
    val s = streams.value
    val outputDir = (dir).getPath // place generated files in sbt's managed sources folder
    runner.value.run("ch.wsl.box.codegen.CustomizedCodeGenerator", files, Array(outputDir), s.log).failed foreach (sys error _.getMessage)
    val fname = outputDir + "Entities.scala"
    val ffname = outputDir + "FileTables.scala"
    val rname = outputDir + "GeneratedRoutes.scala"
    val registryname = outputDir + "EntityActionsRegistry.scala"
    val filename = outputDir + "FileRoutes.scala"
    val regname = outputDir + "GenRegistry.scala"
    Seq(file(fname),file(ffname),file(rname),file(registryname),file(filename),file(regname))    //include the generated files in the sbt project
  }
}
