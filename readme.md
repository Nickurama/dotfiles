--- INSTALL GUIDE ---

after Mason installs everything, you should still install:
Mason - All -stylua
Mason - DAP - java-debug-adapter

after this, on the Lazy install folder you should go to:
lazy/java-debug/
and run:
Windows: mvnw.cmd clean install
Unix: mvnw clean install
(this would be associated with the error "No LSP client found that supports vscode.java.resolveMainClass")
