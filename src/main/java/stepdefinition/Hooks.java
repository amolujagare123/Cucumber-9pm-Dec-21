package stepdefinition;

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks {


    @Before ("@blank")
    public void beforeExecution()
    {
        System.out.println("%%%%%%%%==> beforeExecution");
    }

    @After  ("@blank")
    public void afterExecution()
    {
        System.out.println("%%%%%%%%==> afterExecution");
    }
}
