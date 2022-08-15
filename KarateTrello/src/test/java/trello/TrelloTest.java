package trello;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class TrelloTest {
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:trello")
                //.outputCucumberJson(true)
                .parallel(5);
        //assertEquals(0, results.getFailCount(), results.getErrorMessages());
        assertEquals(0, results.getFailCount(), "Fallo la prueba");
    }
}
