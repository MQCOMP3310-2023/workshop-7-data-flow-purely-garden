

import java

from VarAccess va
 where
 exists ( MethodAccess ma |ma.getArgument(0) = va 
 and ma.getMethod().hasName("prepareStatement") 
 and ma.getMethod().getDeclaringType().hasQualifiedName("java.sql","Connection"))
select va