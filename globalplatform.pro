-injars build
-injars lib/bcprov-jdk15on-150.jar(!META-INF/*)
-injars lib/jopt-simple-4.6.jar(!META-INF/*)
# JNA is library because we package everything back in
-libraryjars lib/jnasmartcardio.jar
-libraryjars  <java.home>/lib/rt.jar:<java.home>/lib/jce.jar
-outjars optimized-globalplatform.jar
-dontobfuscate
-dontoptimize
-keep public class openkms.gpj.GlobalPlatform {
    public <methods>;
}
-keep public class openkms.gpj.GPJTool {
    public static void main(java.lang.String[]);
}
-keepclassmembers,allowoptimization enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-printseeds
-dontnote
