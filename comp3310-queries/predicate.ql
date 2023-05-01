
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

from MethodAccess call
where inAssignment(call)
select call, "used in assignment"