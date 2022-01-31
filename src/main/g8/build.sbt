import Codegen._
import BoxOps._

lazy val root = (project in file("."))
  .settings(
    name := "$name$",
    scalaVersion := "2.13.8",
    resolvers += "Sonatype S01 OSS Snapshots" at "https://s01.oss.sonatype.org/content/repositories/snapshots",
    resolvers += "OSGeo Releases" at "https://repo.osgeo.org/repository/release",
    resolvers += "Eclipse" at "https://repo.eclipse.org/content/groups/snapshots",
    libraryDependencies += "javax.media" % "jai_core" % "1.1.3-explicit-resolve" from "https://repo.osgeo.org/repository/release/javax/media/jai_core/1.1.3/jai_core-1.1.3.jar",
    libraryDependencies += "com.boxframework" %% "box-server" % "$boxFrameworkVersion$",
    (resourceDirectory in Compile) := baseDirectory.value / "conf",
    unmanagedResourceDirectories in Compile += baseDirectory.value / "db",
    Compile / unmanagedSourceDirectories += baseDirectory.value / "db",
    (includeFilter in resources in Compile) := "*.conf",
    generateModel := generateModelTask.value, // register manual sbt command
    migrate := migrateTask.value, // register manual sbt command
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
    cleanFiles += new File("./src/main/scala/ch/wsl/box/generated")
  )
  .enablePlugins(
    GitVersioning,
    JavaAppPackaging,
    DockerPlugin,
    NewRelic,
    BuildInfoPlugin
  )


