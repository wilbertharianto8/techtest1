package test.ui;

import com.intuit.karate.junit5.Karate;

class uiRunner {
    
    @Karate.Test
    Karate testUi() {
        return Karate.run("ui").relativeTo(getClass());
    }    

}
