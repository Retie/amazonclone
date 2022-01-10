package clone.amazon.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages="clone.amazon.service")
@MapperScan(basePackages= {"clone.amazon.mapper"})
public class RootConfig {
	
}
