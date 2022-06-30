<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="${sessionScope.acc.img}" width="50px"
                                        alt="User Image">
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
