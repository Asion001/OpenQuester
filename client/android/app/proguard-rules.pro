# Keep all of the WindowManager extension and sidecar API so R8 doesn’t strip them
-keep class androidx.window.extensions.** { *; }
-keep class androidx.window.sidecar.** { *; }

# Don’t warn about any references to those missing classes
-dontwarn androidx.window.extensions.**
-dontwarn androidx.window.sidecar.**
