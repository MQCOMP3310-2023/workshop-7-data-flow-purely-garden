
/**
 * @id java/examples/method-call
 * @name Call to method
 * @description Finds 
 * @tags call
 *       method
 */

 import java

from MethodAccess ma
where
(ma.getMethod().hasName("nextLine") and ma.getMethod().getDeclaringType().hasQualifiedName("java.util","Scanner"))
or
(ma.getMethod().hasName("readLine")and ma.getMethod().getDeclaringType().hasQualifiedName("java.io","BufferedReader"))
select ma , "Reads untrusted input"