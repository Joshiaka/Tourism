<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:if test="${error ne null }">
<div class="alert text-danger text-center">
    <strong>${error }</strong>
</div>
</c:if>
<c:if test="${msg ne null }">
<div class="alert text-success text-center">
    <strong>${msg }</strong>
</div>
</c:if>
