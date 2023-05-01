
/**
 * @id java/examples/method-call
 * @name Call to method
 * @description Finds 
 * @tags call
 *       method
 */

 import java

 
class StringConcat extends AddExpr {
    StringConcat() { this.getType().toString()="String"}
}

class UnsafeInput extends MethodAccess {
    UnsafeInput() {
        (this.getMethod().hasName("nextLine") 
        and this.getMethod().getDeclaringType().hasQualifiedName("java.util","Scanner"))
        or
        (this.getMethod().hasName("readLine") 
        and this.getMethod().getDeclaringType().hasQualifiedName("java.io","BufferedReader"))
    }
}

from UnsafeInput unsafe
select unsafe, "lulw"