	<?php 
		include_once('ayar.php');
		function categories($id=0)
		{
			global $db,$genelbaslik;
			$tmp='';
			if ($menuler=$db->get_results("SELECT * FROM tbl_sayfalar WHERE ustid='$id' order by id DESC"))
			{
				foreach ($menuler as $menu)
				{
					
					$tmp .='<li><a href="Sayfa/'.$menu->id.'" title=" '.$menu->sayfabaslik.'">'.$menu->sayfabaslik.'</a>';
					
					$sayi = $db->get_var("SELECT COUNT(id) FROM  tbl_sayfalar WHERE ustid='$menu->id'");
					if ($sayi>0)
					{
						$tmp .='<ul>';
						$tmp .= categories($menu->id);
						$tmp .='</ul>';	
					}				
					
					$tmp .='</li>';
				}
				
				return $tmp;
			}
			
		}
	?>

	<nav class="mainmenu_wrapper">
		<ul class="mainmenu nav sf-menu">
			<?php echo categories (); ?>
		</ul>
	</nav>