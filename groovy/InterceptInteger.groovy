Integer.metaClass.invokeMethod = { String name, args ->
    System.out.println("Call to $name intercepted  on $delegate...")

    def validatedMethod = Integer.metaClass.getMetaMethod(name, args)

    if (validatedMethod == null) return Integer.metaClass.invokeMissingMethod(delegate, name, args)

    System.out.println("running pre-filter...")

    result = validatedMethod.invoke(delegate, args)

    System.out.println("running post-filter...")

    result
}

//This blows up
println 4.floatValue()
println 4.intValue()

try {
    println 4.empty()
} catch(Exception e) {
    println e
}