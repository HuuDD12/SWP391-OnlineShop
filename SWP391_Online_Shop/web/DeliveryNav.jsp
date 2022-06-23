<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="image/user.png" width="50px"
                                        alt="User Image">
        <div>
            <p class="app-sidebar__user-name"><b>${sessionScope.acc.username}</b></p>
            <p class="app-sidebar__user-designation">Welcome back!</p>
        </div>
    </div>
    <hr>
    <ul class="app-menu">
        <li><a class="app-menu__item" href="DeliveryDashboard" style="text-decoration: none" ><i class='app-menu__icon bx bx-tachometer'></i><span
                    class="app-menu__label" >Delivery Dashboard</span></a></li>
        <li><a class="app-menu__item" href="deliveringProduct" style="text-decoration: none" ><i class='app-menu__icon bx bx-tachometer'></i><span
                    class="app-menu__label" >Delivering</span></a></li>
        <li><a class="app-menu__item" href="completeProduct" style="text-decoration: none" ><i class='app-menu__icon bx bxs-user-account'></i><span
                    class="app-menu__label">Completed</span></a></li>
        <li><a class="app-menu__item" href="canceledProduct" style="text-decoration: none" ><i class='app-menu__icon bx bxs-user-account'></i><span
                    class="app-menu__label">Canceled</span></a></li>

    </ul>
</aside>
