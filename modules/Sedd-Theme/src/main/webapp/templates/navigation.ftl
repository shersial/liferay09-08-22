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
<ul class="nav nav-pills ">
	<li class="nav-item">
		<a class="nav-link "  href="#" href=""><i class="fa-solid fa-language"></i></a>
	</li>
	<li class="nav-item">
		<a class="nav-link "  href="#"><i class="fa-solid fa-magnifying-glass"></i></a>
		<div class="nav-search" id="search_nav">
			<form class=" d-flex justify-content-evenly " >
				<input class='input mb-5' type="search"
					   id="searchbox" placeholder="Live search keyword..">

			</form>
		</div>
	</li>

	<li class="nav-item">
		<a class="nav-link btn btn-outline-primary" href="#" id="toggle_setting"> Setting</a>
		<div class="nav-setting" id="setting_nav">
			<ul class=" d-flex justify-content-evenly " >
				<li class="d-flex flex-column text-center">
					<h6>Vision Accessibility Options</h6>
					<div class="btn-group">
						<button class="btn btn-outline-light "  data-bs-placement="bottom"
								data-bs-toggle="tooltip"
								id="gray-view" title="Colour Blindness"
								type="button">
							<i class="fa-duotone fa-eye"></i>
						</button>
						<button class="btn btn-outline-light" data-bs-placement="bottom"
								data-bs-toggle="tooltip"
								id="increase_text" title="Increase Text Size"
								type="button">
							<i class="fa-duotone fa-text-size p-1"></i><i
									class="fa-duotone fa-plus"></i>
						</button>
						<button class="btn btn-outline-light" data-bs-placement="bottom"
								data-bs-toggle="tooltip"
								id="decrease_text" title="Decrease Text Size"
								type="button">
							<i class="fa-duotone fa-text-size p-1"></i><i
									class="fa-duotone fa-minus"></i>
						</button>
						<button class="btn btn-outline-light" data-bs-placement="bottom"
								data-bs-toggle="tooltip"
								id="default_text" title="Default Text Size"
								type="button">
							<i class="fa-duotone fa-font p-1"></i><i
									class="fa-duotone fa-arrows-rotate"></i>
						</button>
					</div>
				</li>
				<li class="d-flex flex-column text-center">
					<h6>Listen the Webpage</h6>
					<div class="btn-group">
						<button class="btn btn-outline-light" data-bs-placement="bottom"
								data-bs-toggle="tooltip"
								id="play" title="Play" type="button">
							<i class="fa-duotone fa-play"></i>
						</button>
						<button class="btn btn-outline-light" data-bs-placement="bottom"
								data-bs-toggle="tooltip"
								id="pause" title="Pause" type="button">
							<i class="fa-duotone fa-pause"></i>
						</button>
						<button class="btn btn-outline-light" data-bs-placement="bottom"
								data-bs-toggle="tooltip"
								id="stop" title="Stop" type="button">
							<i class="fa-duotone fa-stop"></i>
						</button>
					</div>
				</li>
				<li class="d-flex flex-column text-center">
					<h6>Dark View</h6>
					<div class="btn-group">
						<button class="btn btn-outline-light" data-bs-placement="bottom"
								data-bs-toggle="tooltip"
								id="dark-mode-toggle" title="Colour Blindness" type="button">
							<i class="fa-duotone fa-moon"></i>
						</button>

					</div>
				</li>
				<li class="d-flex flex-column text-center">
					<h6>Color themes</h6>
					<div class="btn-group">
						<button class="btn btn-outline-light" data-bs-placement="bottom"
								data-bs-toggle="tooltip"
								title="Colour Blindness" type="button">
							<i class="fa-duotone fa-eye"></i>
						</button>
						<button class="btn btn-outline-light" data-bs-placement="bottom"
								data-bs-toggle="tooltip"
								title="Increase Text Size" type="button">
							<i class="fa-duotone fa-text-size"></i><i class="fa-duotone fa-plus"></i>
						</button>
						<button class="btn btn-outline-light" data-bs-placement="bottom"
								data-bs-toggle="tooltip"
								title="Default Text Size" type="button">
							<i class="fa-duotone fa-font"></i><i
									class="fa-duotone fa-arrows-rotate"></i>
						</button>
					</div>

				</li>

			</ul>
		</div>
	</li>
	<li class="nav-item padding-right-2">
		<a class="nav-link rounded-pill btn btn-primary" href="#" > <i class="fa-solid fa-magnifying-glass"></i>Login</a>

	</li>
</ul>
