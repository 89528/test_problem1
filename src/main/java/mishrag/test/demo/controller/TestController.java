package mishrag.test.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sample")
public class TestController {

	@GetMapping("/{name}")
	public String getName(@PathVariable String name) {
		return "Hello " + name + " G!";
	}

}

