package xml.creator.AvailableMappings;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AvailableMappings {

     private String mapping;

     private List<String> availableMappingsForFeed = new ArrayList<>();

    public String getMapping() {
        return mapping;
    }

    @GetMapping("/getMappings")
    @ResponseBody
    private List<String> returnMappings() {
         availableMappingsForFeed.add("rrs/channel/item");
         availableMappingsForFeed.add("root/item");
         availableMappingsForFeed.add("root/channel/item");
        return availableMappingsForFeed;
    }

}
