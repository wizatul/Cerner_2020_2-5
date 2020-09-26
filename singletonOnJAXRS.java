package com.jcg.webservice;
// Program for cerner_2^5_2020 
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;

@Path("/hello")
@ApplicationPath("/")
public class MyRestApp extends Application {
	// cerner_2^5_2020
	@Override
	public Set<Class<?>> getClasses() {
		Set<Class<?>> set = new HashSet<>();
		set.add(MyResource.class);
		return set;
	}
	
	//Use of singleton
	@Override
	public Set<Object> getSingletons() {
		Set<Object> set = new HashSet<>();
		set.add(new MySingletonResource());
		return set;
	}
}