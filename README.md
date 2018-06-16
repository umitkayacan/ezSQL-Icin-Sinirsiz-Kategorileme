# ezSQL-Icin-Sinirsiz-Kategorileme
tbl_sayfalar tablosundan çekilen verileri li tagıyla birlikte kategorileme yapar.

Tabloda bulunan ustid, o menü öğesinin hangi menünün altında
olduğunu gösterir.Eğer ustid 0 (sıfır) ise o menü öğesi Ana Öğedir, 0 (sıfır) değilse Alt Öğedir.
Örnek 

# Anasayfa  | id:1 - ustid:0
# Hakkımızda | id:2 - ustid:0
        Kurumsal | id:5 - ustid:2
        İnsan Kaynakları | id:6 - ustid:2
# Galeri | id:3 - ustid:0
# İletişim | id:4 -  ustid:0

# KULLANIMI
ul tagının içinde echo ile fonksiyonu yazdırmanız gerekir. 

```PHP
<nav class="mainmenu_wrapper">
		<ul class="mainmenu nav sf-menu">
			    <?php echo categories (); ?>
		</ul>
	</nav>
  ```
