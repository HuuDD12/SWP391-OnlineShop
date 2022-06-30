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
        <li><a class="app-menu__item" href="productmanager" style="text-decoration: none" ><i class='app-menu__icon bx bx-purchase-tag-alt'></i><span
                    class="app-menu__label">Manage Product</span></a></li>
        <li><a class="app-menu__item" href="ordermanager" style="text-decoration: none" ><i class='app-menu__icon bx bx-task'></i><span
                    class="app-menu__label">Manage Order</span></a></li>
        <li><a class="app-menu__item" href="feedbackmanager" style="text-decoration: none" ><i class='app-menu__icon bx bx-user-voice'></i><span
                    class="app-menu__label">Manage Feedback</span></a></li>
        <li><a class="app-menu__item" href="blogmanager" style="text-decoration: none" ><i class='app-menu__icon bx bx-user-voice'></i><span
                    class="app-menu__label">Manage Blog</span></a></li>
        <li><a class="app-menu__item" href="ChartControl" style="text-decoration: none" ><i class='app-menu__icon bx bx-user-voice'></i><span
                    class="app-menu__label">Manage Chart</span></a></li>
        <li><a class="app-menu__item" href="salemanager" style="text-decoration: none" ><i class='app-menu__icon bx bx-user-voice'></i><span
                    class="app-menu__label">Manage Sale</span></a></li>
        <li><a class="app-menu__item" href="category" style="text-decoration: none" ><i class='app-menu__icon bx bxs-message-add'></i><span
                    class="app-menu__label">Add Category</span></a></li>
    </ul>
</aside>
