import Codegen._

ThisBuild / scalaVersion     := "2.12.12"
ThisBuild / version          := "0.1.0-SNAPSHOT"

lazy val root = (project in file("."))
  .settings(
    name := "$name$",
    resolvers += Resolver.bintrayRepo("waveinch","maven"),
    libraryDependencies += "boxframework" % "box-server_2.12" % "1.0.46-SNAPSHOT",
    (resourceDirectory in Compile) := baseDirectory.value,
    (includeFilter in resources in Compile) := "*.conf",
    slick := slickCodeGenTask.value , // register manual sbt command
    executableScriptName := "boot",
    dockerExposedPorts ++= Seq(8080),
    packageName in Docker := "$dockerName$",
    dockerUpdateLatest := true,
    dockerEntrypoint := Seq("/opt/docker/bin/boot","-Dconfig.file=/application.conf"),
    newrelicVersion := "5.14.0",
    newrelicIncludeApi := true
  )
  .enablePlugins(
    JavaAppPackaging,
    DockerPlugin,
    NewRelic
  )


