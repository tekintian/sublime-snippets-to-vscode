@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=%~dp0\..\lib\node_modules"
) ELSE (
  @SET "NODE_PATH=%NODE_PATH%;%~dp0\..\lib\node_modules"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\lib\node_modules\sublime-snippets-to-vscode\index.js" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\lib\node_modules\sublime-snippets-to-vscode\index.js" %*
)
