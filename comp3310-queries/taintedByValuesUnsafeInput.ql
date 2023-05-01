
/**
 * @id java/examples/method-call
 * @name Call to method
 * @description Finds 
 * @tags call
 *       method
 */

 import java
 import semmle . code . java . dataflow . DataFlow
 import semmle . code . java . dataflow . TaintTracking
 
 class UnsafeInput extends MethodAccess {
UnsafeInput() {
(this.getMethod().hasName("nextLine") and this.getMethod().getDeclaringType().hasQualifiedName("java.util","Scanner"))
  or
(this.getMethod().hasName("readLine") and this.getMethod().getDeclaringType().hasQualifiedName("java.io","BufferedReader "))
}}


 

from UnsafeInput source , VarAccess sink
where TaintTracking::localTaint( DataFlow::exprNode( source ) , DataFlow::exprNode( sink ) )
and exists ( MethodAccess ma | ma.getArgument(0) = sink 
and ma.getMethod().hasName("prepareStatement") 
and ma.getMethod().getDeclaringType().hasQualifiedName("java.sql","Connection"))
select source , "The source ", sink , "The sink "


