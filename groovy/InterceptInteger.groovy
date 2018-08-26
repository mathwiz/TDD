Integer.metaClass.invokeMethod = { String name, args ->
  System.out.println("Call to $name intercepted  on $delegate...")
  
  def validatedMethod = Integer.metaClass.getMetaMethod(name, args)
}


