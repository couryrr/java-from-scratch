package github.couryrr.jfs;

import java.lang.System.*;
import github.couryrr.jfs.commands.*;

class Main {
    public static void main(String args[]){
        System.out.println("Hello world!");        
        var runCommand = new Run();
        runCommand.execute();
    }
}
