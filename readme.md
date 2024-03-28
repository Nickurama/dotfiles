--- INSTALL GUIDE ---

after Mason installs everything, you should still install:
Mason - All - stylua
Mason - DAP - java-debug-adapter
Mason - DAP - debugpy

after this, on the Lazy install folder you should go to:
lazy/java-debug/
and run: mvnw clean install
(this would be associated with the error "No LSP client found that supports vscode.java.resolveMainClass")

--- COMMON BUGS ---

for C debug to work: gcc -g

for python LSP to work: update nodeJS
