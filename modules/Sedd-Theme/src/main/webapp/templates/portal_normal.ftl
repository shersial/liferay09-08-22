<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${html_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	<!--  font Awesome Pro 6-->
<#--	<script src="https://kit.fontawesome.com/7edef743bc.js" crossorigin="anonymous"></script>-->
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />


<header id="banner" role="banner">
<#--		<div id="heading">-->
<#--			<div aria-level="1" class="site-title" role="heading">-->
<#--				<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">-->
<#--					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />-->
<#--				</a>-->

<#--				<#if show_site_name>-->
<#--					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">-->
<#--						${site_name}-->
<#--					</span>-->
<#--				</#if>-->
<#--			</div>-->
<#--		</div>-->
<#--		<#if !is_signed_in>-->
<#--			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>-->
<#--		</#if>-->

<#--		<#if has_navigation && is_setup_complete>-->
<#--			<#include "${full_templates_path}/navigation.ftl" />-->
<#--		</#if>-->
		<div class="container">
			<nav class="navbar navbar-light">
				<a class="navbar-brand ${logo_css_class}" href="${site_default_url} title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
				<span class="logo-text-ar d-none d-sm-block d-md-none d-lg-none ">
						<p lang="ar">حكومة الشارقة</p>
						<p lang="ar">دائرة التنمية الاقتصادية</p>
					</span>
				<img src="${site_logo}" alt="${logo_description}"  class="d-inline-block align-text-top">
				<span class="logo-text-en">
						<p  lang="en">Government Of Sharjah</p>
						<p  lang="en">Economic Development Department</p>
					</span>
				</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<#if has_navigation && is_setup_complete>
						<#include "${full_templates_path}/navigation.ftl" />
					</#if>
				</div>
			</nav>
		</div>
	</header>
<div class="container-fluid" id="wrapper">
	<section id="content">
		<h2 class="hide-accessible" role="heading" aria-level="1">${the_title}</h2>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>
</div>
<#--	<footer id="footer" role="contentinfo">-->
<#--		<p class="powered-by">-->
<#--			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>-->
<#--		</p>-->
<#--	</footer>-->
<footer id="footer" role="contentinfo">
	<div class=footer-wrapper>
		<#if show_footer>
			<#include "${full_templates_path}/footer.ftl" />


		</#if>


	</div>
</footer>


<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script>
	document.getElementById("last_modify").innerHTML = document.lastModified;
	document.getElementById("last_modify_inner").innerHTML = document.lastModified;
	document.getElementById("year").innerHTML = new Date().getFullYear();
</script>

</body>

</html>