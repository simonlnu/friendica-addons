<script>
	$(function(){
		$("#tab_1 a").click(function(e){
			$("#login_standard").show();
			$("#login_openid").hide();
			$("#tab_1").addClass("active");
			$("#tab_2").removeClass("active");
			e.preventDefault();
			return false;
		});
		$("#tab_2 a").click(function(e){
			$("#login_openid").show();
			$("#login_standard").hide();
			$("#tab_2").addClass("active");
			$("#tab_1").removeClass("active");
			e.preventDefault();
			return false;
			
		});
		
	});
</script>
{{ if $noOid }}
	<h3>$login_title</h3>
{{ else }}
<ul class="tabs">
	<li id="tab_1" class="tab button active"><a href="#">$tab_1</a></li>
	<li id="tab_2" class="tab button"><a href="#">$tab_2</a></li>
</ul>
{{ endif }}
$login_form


{{ if $lastusers_title }}
<h3>$lastusers_title</h3>
<div class='items-wrapper'>
{{ for $lastusers_items as $i }}
	$i
{{ endfor }}
</div>
{{ endif }}


{{ if $activeusers_title }}
<h3>$activeusers_title</h3>
<div class='items-wrapper'>
{{ for $activeusers_items as $i }}
	$i
{{ endfor }}
</div>
{{ endif }}

{{ if $photos_title }}
<h3>$photos_title</h3>
<div class='items-wrapper'>
{{ for $photos_items as $i }}
	$i
{{ endfor }}
</div>
{{ endif }}


{{ if $like_title }}
<h3>$like_title</h3>
<ul id='likes'>
{{ for $like_items as $i }}
	<li>$i</li>
{{ endfor }}
</ul>
{{ endif }}
