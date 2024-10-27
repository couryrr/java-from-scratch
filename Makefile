SHELL = /usr/bin/env bash
MAIN = Main
MAIN_JAVA = $(MAIN).java
MAIN_CLASS = $(MAIN).class
JAR = jfs.jar
PROJECT := github/couryrr/jfs
SRC := src/main/java
BIN := target
CLASS_PATH := $(BIN)/classes
VPATH = $(BIN):$(CLASS_PATH)/$(PROJECT):$(SRC)/$(PROJECT)

.PHONY: get_dep
get_dep: dep dep.txt
	@while read l; do curl "$$l" -o dep/junit.jar; done < dep.txt

.PHONY: clean
clean:
	rm -rf $(BIN)/*

.PHONY: run
run: $(MAIN_CLASS)
	java -cp $(CLASS_PATH) $(PROJECT:/=.).$(MAIN)

.PHONY: run_jar
run_jar: package
	java -jar $(BIN)/$(JAR)

.PHONY: package
package: $(JAR)

dep: 
	mkdir dep

$(MAIN_CLASS): $(SRC)/$(PROJECT)/**/*.java $(MAIN_JAVA)
	javac -d ./$(CLASS_PATH) $(SRC)/$(PROJECT)/**/*.java $(SRC)/$(PROJECT)/*.java

$(JAR): $(MAIN_CLASS)
	jar cfe ./$(BIN)/$(JAR) $(PROJECT:/=.).$(MAIN) -C ./$(CLASS_PATH) .
