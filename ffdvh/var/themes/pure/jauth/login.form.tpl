<div id="auth_login_zone">
{if $failed}
<p>{@jauth~auth.failedToLogin@}</p>
{/if}

{if ! $isLogged}
<form action="{formurl 'jauth~login:in'}" method="post" id="loginForm">
      
		<label class="petit" for="login">Login :</label>
		<input type="text" name="login" id="login" size="9" value="{$login}" />
		<br />
		<label class="petit" for="password">Mot de passe :</label></th>
		<input type="password" name="password" id="password" size="9" />
		<br />
       {if $showRememberMe}
       <p>
		<label for="rememberMe">{@jauth~auth.rememberMe@}</label>
		<p><input type="checkbox" name="rememberMe" id="rememberMe" value="1" />
		{/if}
		
		{formurlparam 'jauth~login:in'}
		{if !empty($auth_url_return)}
		<input type="hidden" name="auth_url_return" value="{$auth_url_return|eschtml}" />
		{/if}
		<br />
		<input type="submit" value="{@jauth~auth.buttons.login@}"/>
	</form>
	<p class="petit"><a href="{jurl 'base~identity:register'}">Je veux m'inscrire !</a></p>
{else}
	{if $user->nickname}
		<p>{$user->nickname}</p>
	{else}
		<p>{$user->login}</p>
	{/if}
    
	<a href="{jurl 'jauth~login:out'}">Déconnexion</a>
    
{/if}
</div>

<hr />
