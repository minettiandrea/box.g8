import Codegen._
import BoxOps._

lazy val root = (project in file("."))
  .settings(
    name := "$name$",
    scalaVersion := "2.12.12",
    resolvers += Resolver.bintrayRepo("waveinch","maven"),
    libraryDependencies += "boxframework" %% "box-server" % "$boxFrameworkVersion$",
    (resourceDirectory in Compile) := baseDirectory.value / "conf",
    unmanagedResourceDirectories in Compile += baseDirectory.value / "db",
    (includeFilter in resources in Compile) := "*.conf",
    generateModel := generateModelTask.value, // register manual sbt command
    installBox := installBoxTask.value, // register manual sbt command
    dropBox := dropBoxTask.value, // register manual sbt command
    executableScriptName := "boot",
    dockerExposedPorts ++= Seq(8080),
    packageName in Docker := "$dockerName$",
    dockerUpdateLatest := true,
    dockerEntrypoint := Seq("/opt/docker/bin/boot","-Dconfig.file=/application.conf"),
    newrelicVersion := "5.14.0",
    newrelicIncludeApi := true,
    git.gitTagToVersionNumber := { tag:String =>
      Some(tag)
    },
    buildInfoKeys := Seq[BuildInfoKey](version,name),
    buildInfoPackage := "boxAppInfo",
    buildInfoObject := "BoxAppBuildInfo",
  )
  .enablePlugins(
    GitVersioning,
    JavaAppPackaging,
    DockerPlugin,
    NewRelic,
    BuildInfoPlugin
  )


