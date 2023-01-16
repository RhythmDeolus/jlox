build:
	make bnrtools
	javac -d . com/craftinginterpreters/*/*.java

bnrtools:
	javac -d . com/craftinginterpreters/tool/*.java
	java com/craftinginterpreters/tool/GenerateAst com/craftinginterpreters/lox
run:
	java com/craftinginterpreters/lox/Lox

makejar:
	jar cvmf MANIFEST.MF Lox.jar com/craftinginterpreters/*/*.class
