doc "The supertype of all exceptions. A subclass represents
     a more specific kind of problem, and may define 
     additional attributes which propogate information about
     problems of that kind."
by "Gavin"
   "Tom"
shared class Exception(
        doc "A description of the problem."
        String? description=null,
        doc "The underlying cause of this exception."
        Exception? cause=null) 
        extends IdentifiableObject() {
    
    doc "The underlying cause of this exception."
    shared Exception? cause = cause;
    
    //shared StackTrace stackTrace { throw; }
    
    doc "A message describing the problem. This default 
         implementation returns the description, if any, or 
         otherwise the message of the cause, if any."
    see (description, cause)
    shared default String message {
        return description ? cause?.message ? "";
    }
    
    shared actual default String string {
        return "Exception \"" message "\"";
    }
    
}