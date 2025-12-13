# Migration Plan — Java 21 Upgrade

- Session ID: b20ce3c2-29a2-45a6-be1d-76472b849590
- Workspace: c:\Users\ten_i\Desktop\nomad-coder-projects\toonflix
- Created: 2025-12-13 21:07:10
- Target branch: appmod/java-migration-20251213210710
- Detected language: java (migration requested for Java)
- Current branch at start: appmod/java-migration-20251212171707

## Goal

Upgrade the project's Java runtime to the LTS version Java 21, update build settings and dependencies, ensure successful build and tests.

## Build environment & choices

- Target JDK: 21 (Java 21 LTS)
- Need to install new JDK: true (will install to C:\Users\ten_i\.jdk if not present)
- JAVA_HOME (after install): C:\Users\ten_i\.jdk\jdk-21 (example)
- Build tool: Gradle (wrapper detected: `gradlew`, `gradlew.bat` in android/)
- Use wrapper: yes

## Files to change (high level)

- Android Gradle settings: `android/build.gradle.kts`, `android/app/build.gradle.kts`, gradle.properties
- CI/build scripts if any referencing older Java
- Any `java.version` or `sourceCompatibility` properties

## Validation & Fix Steps

(COPY of required validation & fix steps — follow exactly during migration)

## VALIDATION & FIX STEPS

You MUST execute the following validation and fix iteration loop until ALL issues are resolved.

⚠️ **CRITICAL LOOP RESTART RULE**:

- Complete ALL the stages in sequence in the current iteration
- IF ANY CHANGES ARE MADE during ANY stage of the current iteration, you MUST start a NEW iteration from first Stage ONLY AFTER completing all the stages of the current iteration
- This ensures that any changes made in one stage don't introduce new issues in other areas
- Only proceed to Final Summary when an ENTIRE iteration completes successfully WITHOUT making any changes in any of the four stages

### Iteration Loop Process:

Each iteration must go through all stages in sequence:

⚠️ **MANDATORY ITERATION TRACKING**:

- At the beginning of each iteration, you MUST clearly state: "🔄 **VALIDATION ITERATION [X]/10** - Starting validation loop" in the progress tracking
- At the beginning of each stage, you MUST clearly state: "📍 **ITERATION [X] - STAGE [Y]: [STAGE_NAME]**" in the progress tracking
- This helps track progress through the validation loop and prevents getting lost in long iteration flows

### Iteration Completion Rules:

**After completing all stages in current iteration**:

**IF NO CHANGES were made in ANY stage during this iteration**:

- ✅ Current iteration is SUCCESSFUL
- ⚠️ **FINAL ITERATION COMMIT CHECK**: Before proceeding to Final Summary, ensure all changes from previous iterations are committed:
  - Use #appmod-version-control with action 'checkForUncommittedChanges' in workspace directory: c:\Users\ten_i\Desktop\nomad-coder-projects\toonflix to verify no uncommitted changes exist
  - IF any uncommitted changes are found: Use #appmod-version-control with action 'commitChanges' and commitMessage 'Final fixes: Cleanup remaining issues' in workspace directory: c:\Users\ten_i\Desktop\nomad-coder-projects\toonflix
- ✅ Proceed to Final Summary - validation loop is complete

**IF ANY CHANGES were made in ANY stage during this iteration**:

- Document all changes made in this iteration
- ⚠️ **NOW** start a NEW iteration from first Stage
- Continue until either:
  - An iteration completes with NO changes made in any stage, OR
  - Maximum 10 iterations are reached

### Iteration Stages

1. CVE Validation and Fix
2. Build Validation and Fix
3. Consistency Validation and Fix
4. Test Validation and Fix
5. Completeness Validation

(See migration session instructions for exact tool usages and commit requirements.)

## Next actions

1. Verify or install JDK 21 on the machine (install to `C:\Users\ten_i\.jdk` if needed).
2. Update Gradle/Gradle wrappers and project properties to target Java 21.
3. Run build via migration tool `build_java_project` with session ID and projectPath.
4. Iterate validation loop until success or max iterations.
