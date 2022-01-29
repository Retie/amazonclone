package clone.amazon.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

public class SiteMeshConfig extends ConfigurableSiteMeshFilter {
	@Override protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {

		/* contentPath의 jsp는 decoratorPath의 데코레이터 파일을 가지도록 명시 */
		builder // Map decorators to path patterns
		.addDecoratorPath("/login", "/WEB-INF/views/decorator/emptyLayout.jsp")
		.addDecoratorPath("/*", 	"/WEB-INF/views/decorator/defaultLayout.jsp")
		
		// Exclude path from decoration
		.addExcludedPath("/html/*")
		.addExcludedPath(".json")
		.setMimeTypes("text/html");
		
	}
}