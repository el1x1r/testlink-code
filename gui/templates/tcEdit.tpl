{* TestLink Open Source Project - http://testlink.sourceforge.net/ *}
{* $Id: tcEdit.tpl,v 1.7 2006/03/29 14:33:32 franciscom Exp $ *}
{* Purpose: smarty template - edit test specification: test case *}
{*
20060303 - franciscom
20051008 - am - correct wrong link to keywords view page
*}
{include file="inc_head.tpl"}

<body>

<div class="workBack" style="font-weight: bold;">
<h1>{lang_get s='title_edit_tc'} {$tc.name|escape} {lang_get s='version'} {$tc.version}</h1> 

<form method="post" action="lib/testcases/tcEdit.php">
  <input type="hidden" name="testcase_id"  value="{$tc.testcase_id}">
  <input type="hidden" name="tcversion_id"  value="{$tc.id}">
	<input type="hidden" name="version" value="{$tc.version}" />
	

	<div style="float: right;">
		<input id="do_update" type="submit" name="do_update" value="update" />
	</div>	

	<p>{lang_get s='tc_title'}<br />
		<input type="text" name="name" size="40" value="{$tc.name|escape}"
			alt="{lang_get s='alt_add_tc_name'}"/>
	</p>

	<div>{lang_get s='summary'}<br />
		{$summary}
	</div>
	
	<div>{lang_get s='steps'}<br />
		{$steps}
	</div>

	<div>{lang_get s='expected_results'}<br />
		{$expected_results}
	</div>
	
	<p><a href="lib/keywords/keywordsView.php" target="mainframe">{lang_get s='tc_keywords'}</a><br />
		<select name="keywords[]" style="width: 30%" size="{$keySize}" multiple="multiple">
		{section name=oneKey loop=$keys}
				{if $keys[oneKey].selected == "yes"}
					<option value="{$keys[oneKey].key|escape}" selected="selected">{$keys[oneKey].key|escape}</option>
			{else}
					<option value="{$keys[oneKey].key|escape}">{$keys[oneKey].key|escape}</option>
			{/if}
		{/section}
		</select>
	</p>
</form>

<script type="text/javascript" defer="1">
   	document.forms[0].title.focus()
</script>

</div>
</body>
</html>