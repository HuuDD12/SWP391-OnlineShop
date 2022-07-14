<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<aside class="app-sidebar">
    <div class="app-sidebar__user">
        <c:if test="${sessionScope.acc.img != null}">
            <img class="app-sidebar__user-avatar" src="${sessionScope.acc.img}" width="50px"
                 alt="User Image">
        </c:if> 
        <c:if test="${sessionScope.acc.img == '' or sessionScope.acc.img == null  }">
            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="app-sidebar__user-avatar" width="50px">
        </c:if>        
        <div>
            <p class="app-sidebar__user-name"><b>${sessionScope.acc.username}</b></p>
            <p class="app-sidebar__user-designation">Welcome back!</p>
        </div>
    </div>
    <hr>
    <ul class="app-menu">
        <li><a class="app-menu__item" href="dashboard" style="text-decoration: none" ><i class='app-menu__icon bx bx-tachometer'></i><span
                    class="app-menu__label" >DashBoard</span></a></li>
        <li><a class="app-menu__item" href="userlist" style="text-decoration: none" ><i class='app-menu__icon bx bxs-user-account'></i><span
                    class="app-menu__label">Manage Customer</span></a></li>       
    </ul>
</aside>
