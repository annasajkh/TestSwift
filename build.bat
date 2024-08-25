@echo off
set SOURCE_DIR=Assets
set TARGET_DIR=.build\release

swift build -c release

xcopy /E /I /Y "%SOURCE_DIR%" "%TARGET_DIR%\Assets" > xcopy.log 2>&1