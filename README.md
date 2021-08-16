# simutate

mvn clean package install

java -jar [target-repository]/simutate-1.0.jar [arguments]


options based on tasks:

java -jar [target-repository]/simutate-1.0.jar simulate codebert Math

java -jar [target-repository]/simutate-1.0.jar flatten codebert

java -jar [target-repository]/simutate-1.0.jar getalltests codebert

java -jar [target-repository]/simutate-1.0.jar processsourcepatches codebert

java -jar [target-repository]/simutate-1.0.jar abstract

java -jar [target-repository]/simutate-1.0.jar unabstract


NOTE: please do not forget to modify below variable in data.java file to specify your desired repository location

static String dirMain = isWindows ? "C:/GitHub/mutation" : "/home/agarg/ag/mutation";

-----------------------------------------------------------------------------------------------------------------------------

below is an example:

java -jar C:\GitHub\simutate\target\simutate-1.0.jar

please pass below as arguments and try again

1. a task to perform (e.g. abstract / unabstract / processsourcepatches / simulate / flatten / getalltests )

NOTE: for task "simulate", please pass below as additional arguments and try again

Additional 1. mutant directory technique suffix (e.g. nmt / codebert / ...)

Additional 2. project name to perform simulation for (e.g. Cli)

and

Also for tasks "flatten", "processsourcepatches", and "getalltests", please pass below as additional arguments and try again

Additional 1. mutant directory technique suffix (e.g. nmt / codebert / ...)

-----------------------------------------------------------------------------------------------------------------------------

please feel free to fork it, modify and use it as per your convenience.

NOTE: I know readme is not descriptive, I am working on it... meanwhile feel free to reach out to me for suggestions/questions/concerns.

cheers!
