package github.couryrr.jfs.commands;

import java.lang.System;
import github.couryrr.jfs.executors.*;
public class Run{

    public void execute(){
        System.out.println("Run executing");

        var stopper = new Stopper();

        stopper.stop();
    }
}
