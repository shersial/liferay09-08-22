<nav aria-label="<@liferay.language key="site-pages" />" class="${nav_css_class}" id="copyrights_navigation" role="navigation">
    <ul role="menubar">
        <#list nav_items as nav_item>
            <#assign
            nav_item_attr_has_popup = ""
            nav_item_css_class = ""
            nav_item_layout = nav_item.getLayout()
            />



            <li class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
                <a ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>


            </li>
        </#list>
    </ul>
</nav>