# Description

The goal is simple do not use an existing build system for a java project. 
That means no maven and no gradle. 
This is to better understand why certain flags are used and what they do 
in the compilation.

This is still a work in progress.

## Goals
- Easier config of make vars
- Download and link deps
- Multi-project setup

# Setup

- Have java on your system for development.
- make is installed.

# Usage

In the repo currently you can run

`make <main_class_name>` - checks all subdirs and root or SRC for java files. Creates 
the class files in `./target/classes/`

`make package` - creates a jar.

`make run` - runs the `$(BIN)/$(MAIN_CLASS)` 

`make run_jar` - runs the `$(BIN)/$(JAR)` 

>[!NOTE]
>I had a phony `make app` but it would rebuild everytime.

