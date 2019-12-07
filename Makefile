JFLAGS = -g -d .
JC = javac
JVM= java 
FILE=
CLASSPATH=lib/org.springframework.beans-3.0.1.RELEASE-A.jar:lib/org.springframework.core-3.0.1.RELEASE-A.jar:lib/com.springsource.org.apache.commons.logging-1.1.1.jar:.

.PHONY: classes clean run
.SUFFIXES: .java .class

.java.class:
	$(JC) $(JFLAGS) -cp $(CLASSPATH) $*.java

CLASSES = \
        com/javatpoint/Student.java \
        com/javatpoint/Test.java

MAIN = com.javatpoint.Test 

default: classes

classes: $(CLASSES:.java=.class)

run:
	$(JVM) -cp $(CLASSPATH) $(MAIN)

clean:
	find . -name *.class| xargs rm -f

