<!DOCTYPE html>
{config_load file="input_dimensions.conf" section="login"}
{lang_get var='labels' 
          s='login_name,password,btn_login,new_user_q,login,demo_usage,lost_password_q,oauth_login'}
<html >
  
  <head>
    <meta charset="UTF-8">
    <title>{$labels.login}</title>
    <link href="gui/templates/dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="gui/templates/dashio/lib/bootstrap/css/signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
    <div class="site__container">
      <div class="grid__container">
      <img src="{$tlCfg->theme_dir}images/{$tlCfg->logo_login}"><br>
      <span>{$tlVersion|escape} </span>
      </div>
      
      {if $gui->note != ''}
      <br>
      <div class="grid__container">
      <div class="user__feedback">
      {$gui->note}
      </div>
      </div>
      {/if}

      {if $tlCfg->demoMode}
      <br>
      <div class="grid__container">
      {$labels.demo_usage}
      </div>
      {/if}

      {if $tlCfg->login_info != ""}
      <div class="text--center">
      {$tlCfg->login_info}
      </div>
      {/if}
      
      {if $gui->draw}  
        <div class="grid__container">
          <form name="login" id="login" action="login.php?viewer={$gui->viewer}" method="post" class="form-signin">
            <input type="hidden" name="reqURI" value="{$gui->reqURI|escape:'url'}"/>
            <input type="hidden" name="destination" value="{$gui->destination|escape:'url'}"/>

            {if $gui->ssodisable}
            <input type="hidden" name="ssodisable" value="{$gui->ssodisable}"/>
            {/if}

            <div class="form__field">
              <label for="inputEmail" class="sr-only">Email address</label>
              <input maxlength="{#LOGIN_MAXLEN#}" class="form-control" name="tl_login" id="tl_login" type="text" class="form__input" placeholder="{$labels.login_name}" required>
            </div>

            <div class="form__field">
              <label for="inputPassword" class="sr-only">Password</label>
              <input type="password" name="tl_password" class="form-control" id="tl_password" placeholder="{$labels.password}" required>
            </div>

            <div class="form__field">
              <input id="tl_login_button" class="btn btn-lg btn-primary btn-block" type="submit" value="{$labels.btn_login}">
            </div>

            {foreach from=$gui->oauth item=oauth_item}
                <div class="button">
                <a style="text-decoration: none; color:#ffffff;" href="{$oauth_item->link}">
                <img src="{$tlCfg->theme_dir}images/{$oauth_item->icon}" style="height: 42px; vertical-align:middle;">
                <span style="padding: 10px;">{$labels.oauth_login}{$oauth_item->name}</span></a>
                </div>
            {/foreach}
          </form>

          <p class="text--center">
          

          {* the configured authentication method don't allow users to reset his/her password *}    
          {if $gui->external_password_mgmt eq 0 && $tlCfg->demoMode eq 0}
            <a href="lostPassword.php?viewer=new" id="tl_lost_password">
            {$labels.lost_password_q}</a>
          {/if}
          </p> 
        </div>
      {/if}
  </div>
</body>
</html>
