
/**
 * @id java/examples/method-call
 * @name Call to method
 * @description Finds 
 * @tags call
 *       method
 */

 import java

predicate inAssignment(Expr e) {
    exists (AssignExpr a | a.getAChildExpr*() = e)
}

class StringConcat extends AddExpr {
    StringConcat() { this.getType().toString()="String"}
}

from StringConcat c
where inAssignment(c)
select c, "used in assignment"