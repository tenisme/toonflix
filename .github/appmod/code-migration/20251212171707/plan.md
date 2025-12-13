# Java 21 Migration Plan

- Session ID: 3a16ae85-993c-4e92-affb-6015001dfb3b
- Created: 2025-12-12 17:17:07
- Uncommitted Changes Policy: Always Stash
- Target branch: appmod/java-migration-20251212171707
- Detected project language: flutter/dart (contains Android Gradle modules)

## Summary

This workspace is primarily a Flutter project with an Android Gradle module. There is no top-level Maven `pom.xml`. The Android module uses Gradle Kotlin DSL (`android/build.gradle.kts` and `android/app/build.gradle.kts`).

Goal: Prepare environment and update Java runtime-related settings to use Java 21 (LTS) where applicable for Java/Android submodules.

## Files to inspect / change

- android/build.gradle.kts
- android/app/build.gradle.kts
- android/gradle.properties
- Any Gradle wrapper files under `android/gradle/wrapper`

Order and rationale:

1. Update JDK environment (install / set JAVA_HOME) — already installed JDK 21 at `C:\Users\ten_i\\.jdk\\jdk-21.0.8(1)`.
2. Inspect Gradle settings and plugin compatibility in `android/build.gradle.kts` and `android/app/build.gradle.kts`.
3. Update `gradle.properties` or `build.gradle.kts` to set `org.gradle.java.home` if necessary.
4. Run Gradle build for the Android module and address any incompatibilities.

## JDK settings

- Current detected JDKs: JDK 21 installed at `C:\Users\ten_i\\.jdk\\jdk-21.0.8(1)`
- Need to install new JDK: false (JDK 21 already installed)
- JAVA_HOME (suggested): `C:\Users\ten_i\\.jdk\\jdk-21.0.8(1)`
- Reason: User requested LTS Java 21 and JDK 21 is installed.
- Install path (if needed): `C:\Users\ten_i\\.jdk` (already used)

## Build tool settings

- Build tool type: Gradle (Android module uses Gradle Kotlin DSL)
- Wrapper used: yes (Gradle wrapper files present under `android/gradle/wrapper`)
- MAVEN_HOME: N/A
- If needed, use Gradle wrapper to build Android module.

## Steps

1. Save this plan to `.github/appmod/code-migration/20251212171707/plan.md` (done).
2. Ensure `JAVA_HOME` is set to `C:\Users\ten_i\\.jdk\\jdk-21.0.8(1)` for the current session.
3. Update `android/gradle.properties` or `android/build.gradle.kts` to set `org.gradle.java.home` if Gradle does not pick `JAVA_HOME` automatically.
4. Run `./gradlew :app:assembleDebug` from `android` to validate build under Java 21; fix compatibility issues if any.
5. If build issues arise, document, fix, and commit changes to branch `appmod/java-migration-20251212171707`.
6. Run unit/instrumentation tests if available for Android modules.
7. Finalize migration summary and update progress/commit.

## Notes and caveats

- This repository is a Flutter app; Java runtime changes affect only native Android modules and tooling. Java 21 may not be required for Flutter itself.
- Android Gradle Plugin (AGP) version must be compatible with Java 21; update AGP if necessary after reviewing `android/build.gradle.kts`.
- Some Android tooling may expect Java 11/17; verify compatibility before forcing Java 21.

## Next actions (I will perform now if you confirm):

- Set `JAVA_HOME` for the terminal session to `C:\Users\ten_i\\.jdk\\jdk-21.0.8(1)`.
- Update `android/gradle.properties` with `org.gradle.java.home` if missing.
- Run Gradle wrapper build for the Android app and capture results.

---

Saved plan path: `.github/appmod/code-migration/20251212171707/plan.md`
