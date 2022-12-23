package test.api;

import com.intuit.karate.junit5.Karate;

class apiRunner {
    
    @Karate.Test
    Karate testApi() {
        return Karate.run("api").relativeTo(getClass());
    }    

}
