<#--<nav aria-label="<@liferay.language key="site-pages" />" class="${nav_css_class}" id="navigation" role="navigation">-->
<#--	<ul role="menubar">-->
<#--		<#list nav_items as nav_item>-->
<#--			<#assign-->
<#--				nav_item_attr_has_popup = ""-->
<#--				nav_item_css_class = ""-->
<#--				nav_item_layout = nav_item.getLayout()-->
<#--			/>-->

<#--			<#if nav_item.isSelected()>-->
<#--				<#assign-->
<#--					nav_item_attr_has_popup = "aria-haspopup='true'"-->
<#--					nav_item_css_class = "selected"-->
<#--				/>-->
<#--			</#if>-->

<#--			<li class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">-->
<#--				<a aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>-->

<#--				<#if nav_item.hasChildren()>-->
<#--					<ul class="child-menu" role="menu">-->
<#--						<#list nav_item.getChildren() as nav_child>-->
<#--							<#assign-->
<#--								nav_child_css_class = ""-->
<#--							/>-->

<#--							<#if nav_item.isSelected()>-->
<#--								<#assign-->
<#--									nav_child_css_class = "selected"-->
<#--								/>-->
<#--							</#if>-->

<#--							<li class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">-->
<#--								<a aria-labelledby="layout_${nav_child.getLayoutId()}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>-->
<#--							</li>-->
<#--						</#list>-->
<#--					</ul>-->
<#--				</#if>-->
<#--			</li>-->
<#--		</#list>-->
<#--	</ul>-->
<#--</nav>-->

<ul class="navbar-nav" aria-label="<@liferay.language key="site-pages" />" role="menubar" class="${nav_css_class}" id="navigation" role="navigation">
	<#list nav_items as nav_item>
		<#assign
		nav_item_attr_has_popup = ""
		nav_item_css_class = "nav-item"
		nav_link_css_class = "nav-link"
		nav_link_attr_has_popup  = ""
		nav_item_layout = nav_item.getLayout()
		/>
		<#if nav_item.isSelected()>
			<#assign
			nav_item_attr_has_popup = "aria-haspopup='true'"
			nav_link_css_class = "${nav_link_css_class} active"
			/>
		</#if>
		<#if nav_item.hasChildren()>
			<#assign
			nav_item_css_class = "${nav_item_css_class} dropdown"
			nav_link_attr_has_popup  = "data-bs-toggle='dropdown'"
			nav_link_css_class = "${nav_link_css_class} dropdown-toggle"
			/>
		</#if>
		<li class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
			<a class="${nav_link_css_class}"  ${nav_item_attr_has_popup}  ${nav_link_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</a>

			<#if nav_item.hasChildren()>

				<ul class="dropdown-menu" role="menu">
					<#list nav_item.getChildren() as nav_child>

						<#assign
						nav_child_css_class = ""
						nav_child_link_css_class = "dropdown-item"
						/>

						<#if nav_item.isSelected()>
							<#assign
							nav_child_css_class = "selected"
							/>
						</#if>

						<li  id="layout_${nav_child.getLayoutId()}" role="presentation">
							<a class="${nav_child_link_css_class}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
						</li>
					</#list>
				</ul>
			</#if>
		</li>
	</#list>
</ul>
<ul class="nav nav-pills">
	<li class="nav-item">
		<a class="nav-link "  href="#" href=""><i class="fa-solid fa-language"></i></a>
	</li>
	<li class="nav-item">
		<a class="nav-link "  href="#"><i class="fa-solid fa-magnifying-glass"></i></a>
	</li>

	<li class="nav-item">
		<a class="nav-link btn btn-outline-primary" href="#">Setting</a>
	</li>
	<li class="nav-item">
		<a class="nav-link rounded-pill btn btn-primary" href="#" >Login</a>
	</li>
</ul>
