<!DOCTYPE HTML>
<html lang="ru-RU">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">

	<title>Print Sprint</title>

	<link rel="stylesheet" href="/assets/main/css/style.css">
	<link rel="stylesheet" href="/assets/main/css/font-awesome/css/all.min.css">
	<link rel="icon" href="/assets/main/img/favicon.png" type="img/png">

    <script src="/assets/main/scripts/assets/jquery.min.js"></script>
</head>
<body>

<!--Навигация-->
<nav class="nav">
	<div class="nav_content">
		<a href="/index.html" class="nav_content-logo">
			<img src="/assets/main/img/logo/logo-white-1x.png" alt="Logo">
		</a>

		<div class="nav_content-menu">
			<ul>
				<li><a href="/services.html">Услуги</a></li>
				<li><a href="#">Портфолио</a></li>
				<li><a href="#">О компании</a></li>
				<li><a href="#">Блог</a></li>
				<li><a href="#">Контакты</a></li>
				<li class="marked"><a href="">Рекламным Агентствам</a></li>
			</ul>
		</div>

		<div class="nav_content-phone">

			<div class="nav_mobile">
				<span></span>
				<img src="/assets/main/icons/nav_mobile.svg" alt="">
			</div>

			<popup-toggle class="number">
				<div class="nav_content-phone-icon">
					<img src="/assets/main/icons/phone_nav.svg" alt="Phone Icon">
					<a class="phone_mobile" href="tel:+74952666406"><img src="/assets/main/icons/phone_mobile.svg" alt="" class="phone_mobile"></a>
				</div>
				<p class="num">+7 (495) 266-64-06</p>
			</popup-toggle>

			<div class="popup">
				<p class="title">Работаем по будням</p>
				<p class="time">10:00 - 20:00</p>
				<a href="#" class="btn btn-primary btn-small">Обратный звонок</a>
			</div>
		</div>
	</div>
</nav>

<header class="header">
	<div class="header_content">
		<div class="bg">
			<img src="/assets/main/img/backgrounds/header-1x.svg" alt="">
		</div>
		<div class="left">
			<span class="small">Изготавливаем рекламу с 1991 года</span>
			<h4 class="title">Мы поможем вам привлечь новых клиентов в свой бизнес благодаря яркой и необычной наружной рекламе.</h4>
			<a href="#" class="btn-primary">Оставить заявку</a>
		</div>
		<div class="right service-grid">
			<a href="#" class="service-grid-item">
				<div class="content">
					<div class="title">Мы изготовим вывеску любой сложности <span>за 24 часа</span></div>
					<div class="more"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
				</div>
				<div class="icon icon-horizontal no-padding">
					<img src="/assets/main/icons/banner.svg" alt="Banner">
				</div>
				<div class="icon icon-vertical no-padding">
					<img src="/assets/main/icons/cafe-vertical.svg" alt="Banner">
				</div>
			</a>

			<a href="#" class="service-grid-item">
				<div class="content">
					<div class="title title-small"><span>Табличка «Режим работы»</span> <br> в подарок при заказе вывески</div>
					<div class="more"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
				</div>
				<div class="icon">
					<img src="/assets/main/icons/working_time.svg" alt="working_time">
				</div>
			</a>

			<a href="#" class="service-grid-item">
				<div class="content">
					<div class="title title-small"><span>«100 наклеек с вашим логотипом»</span> в подарок при заказе вывески</div>
					<div class="more"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
				</div>
				<div class="icon">
					<img src="/assets/main/icons/sticker.svg" alt="Sticker">
				</div>
			</a>
		</div>
	</div>
</header>

<div class="cookies">
	<p>Сайт использует cookies. Нажимая на данную кнопку вы соглашаетесь с используемой <a href="#" target="_blank">политикой конфиденциальности</a>.</p>
	<button>OK</button>
</div>

<main>

	<!--call to action с рулеткой-->
	<call-to-action class="spinning-button call_to_action third-up">
		<div class="image">
			<img class="active" src="/assets/main/icons/ruletka.svg" alt="ruletka">
			<div class="disabled">
				<img src="/assets/main/icons/freeicon.svg" alt="freeicon">
			</div>
		</div>
		<div class="content">
			<h2>Пригласите нашего специалиста для проведения замеров</h2>
			<p>Рассчитаем точные параметры будущей конструкции, назовем цену, сроки изготовления и ответим на любые вопросы на месте.</p>
		</div>
		<div class="button">
			<a class="btn btn-primary" href="#">Пригласить специалиста</a>
			<img src="/assets/main/icons/freeicon.svg" alt="freeicon">
		</div>
	</call-to-action>

	<!--Виды услуг-->
	<section class="section-services">

		<div class="section-services__content">
			<div class="section-title">
				<h3>Выберите необходимую услугу и свяжитесь с нами</h3>
			</div>

			<div class="service-grid grid">
				<a href="#" class="service-grid-item">
					<div class="content">
						<div class="title title-medium">Изготовление вывесок</div>
						<div class="more"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
					</div>
					<div class="icon">
						<img src="/assets/main/icons/viveski.svg" alt="viveski.svg">
					</div>
				</a>

				<a href="#" class="service-grid-item">
					<div class="content">
						<div class="title title-medium">Дизайн проект для вывески и подготовка ПКД</div>
						<div class="more"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
					</div>
					<div class="icon">
						<img src="/assets/main/icons/design.svg" alt="design">
					</div>
				</a>

				<a href="#" class="service-grid-item">
					<div class="content">
						<div class="title title-medium">Широкоформатная и интерьерная печать</div>
						<div class="more"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
					</div>
					<div class="icon">
						<img src="/assets/main/icons/printing.svg" alt="printing">
					</div>
				</a>

				<a href="#" class="service-grid-item">
					<div class="content">
						<div class="title title-medium">Монтажные работы</div>
						<div class="more"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
					</div>
					<div class="icon">
						<img src="/assets/main/icons/montage.svg" alt="montage">
					</div>
				</a>

				<a href="#" class="service-grid-item">
					<div class="content">
						<div class="title title-medium">Брендироване автотранспорта</div>
						<div class="more"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
					</div>
					<div class="icon">
						<img src="/assets/main/icons/auto.svg" alt="auto">
					</div>
				</a>

				<a href="#" class="service-grid-item">
					<div class="content">
						<div class="title title-medium">POS-материалы, таблички, навигация и роллапы</div>
						<div class="more"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
					</div>
					<div class="icon">
						<img src="/assets/main/icons/pos-m.svg" alt="pos-m">
					</div>
				</a>
			</div>

			<div class="section-button">
				<a href="#" class="btn-alt">Смотреть все услуги</a>
			</div>

		</div>

	</section>

	<!--Примеры выполненных работ-->
	<section class="section-slider">
		<div class="section-slider__content">
			<div class="title">
				<h1>Более 20 лет мы занимаемся изготовлением наружной рекламы</h1>
				<img src="/assets/main/img/backgrounds/20years.svg" alt="">
			</div>
			<div class="index-slider">
				<div class="content">
					<div class="item">
						<img src="/assets/main/img/services/1.jpg" alt="">
					</div>
					<div class="item">
						<img src="/assets/main/img/services/signboards/slider-1.png" alt="">
					</div>
					<div class="item">
						<img src="/assets/main/img/services/signboards/slider-1.png" alt="">
					</div>
					<div class="item">
						<img src="/assets/main/img/services/signboards/slider-1.png" alt="">
					</div>
				</div>

				<div class="arrows">
					<div class="left"><i class="fa fa-long-arrow-left"></i></div>
					<div class="right"><i class="fa fa-long-arrow-right"></i></div>
				</div>
			</div>
			<div class="descr">
				<h3>Работаем в соответствии с Постановлением Правительства Москвы №902-ПП</h3>
				<p>Мы соблюдаем установленные правила при проектировании, изготовлении и монтаже. Будьте уверены, что вы избежите штрафа и замены вывески.</p>
				<span>Вывеска для фирменного магазина бренад «ZASPORT»</span>
			</div>
		</div>
	</section>

	<!--Карта выполненных работ-->
	<section class="section-map">
		<div class="section-map__content">
			<div class="content">
				<div class="left">
					<h2>
						Работаем по всей России
					</h2>
					<p>
						Начиная с 1999 года мы изготовили уже более 3 000 объектов наружной рекламы и разместили их в самых разных уголках Москвы, Санкт-Петербурга, Воронежа, Архангельска, Нижнего-Новгорода и еще порядка 10 городов России.
					</p>
				</div>
				<div class="right">
					<div class="item">
						<h1>1999</h1>
						<p>год основания</p>
					</div>
					<div class="item">
						<h1>3000</h1>
						<p>объектов</p>
					</div>
					<div class="item">
						<h1>10</h1>
						<p>городов</p>
					</div>
				</div>
			</div>
			<div class="map">
				<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A44cd8d51ccb0c441f160bf440775fe85054890d4a016ec5830587b686583784a&amp;width=100%&amp;height=100%&amp;lang=ru_RU&amp;scroll=true"></script>
			</div>
		</div>
	</section>

	<!--call to action с рулеткой-->
	<call-to-action class="spinning-button call_to_action half-up">
		<div class="image">
			<img class="active" src="/assets/main/icons/ruletka.svg" alt="ruletka">
			<div class="disabled">
				<img src="/assets/main/icons/freeicon.svg" alt="freeicon">
			</div>
		</div>
		<div class="content">
			<h2>Пригласите нашего специалиста для проведения замеров</h2>
			<p>Рассчитаем точные параметры будущей конструкции, назовем цену, сроки изготовления и ответим на любые вопросы на месте.</p>
		</div>
		<div class="button">
			<a class="btn btn-primary" href="#">Пригласить специалиста</a>
			<img src="/assets/main/icons/freeicon.svg" alt="freeicon">
		</div>
	</call-to-action>

	<!--Рекламным агентствам-->
	<section class="section-part">

		<div class="section-part__content">
			<div class="background-image">
				<img src="/assets/main/icons/section-partner/background.svg" alt="Background">
			</div>
			<div class="section-part__content-left">
				<div class="top">
					<h2>Предлагам выгодное партнерство рекламным агентствам</h2>
					<p>Мы располагаем большими производственными мощностями и готовы выполнять для вас отдельные виды работ.</p>
				</div>
				<div class="bottom">
					<p>По вопросам сотрудничества пишите на почту, отвечаем оперативно:</p>
					<a class="btn" href="mailto:info@print-s-print.ru">info@print-s-print.ru</a>
					<a class="btn-outline btn-small" href="#">узнать подробнее</a>
				</div>
			</div>
			<div class="section-part__content-right">
				<ul class="grid">
					<li class="item">
						<div class="icon">
							<img src="/assets/main/icons/section-partner/montage.svg" alt="montage">
						</div>
						<p>Монтажные работы</p>
					</li>

					<li class="item">
						<div class="icon">
							<img src="/assets/main/icons/section-partner/shirokoformatnaya_pechat.svg" alt="shirokoformatnaya_pechat">
						</div>
						<p>Широкоформатная печать</p>
					</li>

					<li class="item">
						<div class="icon">
							<img src="/assets/main/icons/section-partner/frezerovka.svg" alt="frezerovka">
						</div>
						<p>Фрезеровка</p>
					</li>

					<li class="item">
						<div class="icon">
							<img src="/assets/main/icons/section-partner/plotternaya_rezka.svg" alt="plotternaya_rezka">
						</div>
						<p>Плоттерная резка</p>
					</li>

					<li class="item">
						<div class="icon">
							<img src="/assets/main/icons/section-partner/lazernaya_rezka.svg" alt="lazernaya_rezka">
						</div>
						<p>Лазерная резка</p>
					</li>

					<li class="item">
						<div class="icon">
							<img src="/assets/main/icons/section-partner/nakat_plenki.svg" alt="nakat_plenki">
						</div>
						<p>Накатка самоклеящихся пленок резка</p>
					</li>

					<li class="item">
						<div class="icon">
							<img src="/assets/main/icons/section-partner/gibka.svg" alt="gibka">
						</div>
						<p>Гибка бортов для объемных букв из алюминия</p>
					</li>

					<li class="item">
						<div class="icon">
							<img src="/assets/main/icons/section-partner/svarka.svg" alt="svarka">
						</div>
						<p>Сварка металлических каркасов и сложных конструкций</p>
					</li>
				</ul>
			</div>
		</div>
	</section>

	<!--Блок-->
	<section class="section-blog">

		<div class="section-title">
			<h3>Интересные статьи из нашего блога о рекламе</h3>
		</div>

		<div class="section-blog__content">
			<div class="grid">

				<a class="item" href="#">
					<div class="intro">
						<div class="new">Новая публикация</div>
						<img src="/assets/main/img/blog-examp.png" alt="Examp">
					</div>
					<div class="content">
						<div class="title">
							<h2>Обзор европейских трендов магазинных вывесок</h2>
						</div>
						<div class="item-more">
							<div class="more more-gray"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
							<span class="date">21.05.2020</span>
						</div>
					</div>
				</a>

				<a class="item" href="#">
					<div class="intro">
						<div class="new">Новая публикация</div>
						<img src="/assets/main/img/blog-examp.png" alt="Examp">
					</div>
					<div class="content">
						<div class="title">
							<h2>Обзор европейских трендов магазинных вывесок</h2>
						</div>
						<div class="item-more">
							<div class="more more-gray"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
							<span class="date">21.05.2020</span>
						</div>
					</div>
				</a>

				<a class="item" href="#">
					<div class="intro">
						<div class="new">Новая публикация</div>
						<img src="/assets/main/img/blog-examp.png" alt="Examp">
					</div>
					<div class="content">
						<div class="title">
							<h2>Обзор европейских трендов магазинных вывесок</h2>
						</div>
						<div class="item-more">
							<div class="more more-gray"><p class="hidden">Подробнее</p><i class="fa fa-long-arrow-right"></i></div>
							<span class="date">21.05.2020</span>
						</div>
					</div>
				</a>

			</div>

			<div class="section-button">
				<a href="#" class="btn-alt">Перейти в блог</a>
			</div>
		</div>

	</section>

	<!--Контакты-->
	<section class="contact-us mt-y-10">
		<div class="contact-us__content">
			<!--min-height: 54rem-->
			<div class="contact-us__content-left">
				<div class="background">
					<img src="/assets/main/img/contact/section-bg.svg" alt="Contact Background">
				</div>
				<div class="top">
					<h1 class="title">Остались вопросы?</h1>
					<p class="descr">Свяжитесь с нами для получения консультации. Подберем решение в соответствии с вашим бюджетом, расскажем об успешных кейсах и ответим на любые вопросы.</p>
				</div>
				<div class="bottom">
					<h1 class="phone">+7 (495) 266-64-06</h1>
					<p class="descr">Пн. — Пт., с 10:00 до 20:00</p>
				</div>
			</div>
			<div class="contact-us__content-right">
				<div class="top">
					<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A6b230446370d38ed7acc15536518a9bdd406d115a8e408806684da8b7f6bb42a&amp;width=100%&amp;height=100%&amp;lang=ru_RU&amp;scroll=true"></script>
				</div>
				<div class="bottom">
					<div class="descr"><p>Наш адресс</p>
						<h3 class="address">Московская область, Одинцовский городской округ, село Немчиновка, 2-й просек, дом 22.</h3>
					</div>
					<div class="pointer">
						<img src="/assets/main/icons/pointer.svg" alt="pointer">
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--call to action с рулеткой-->
	<call-to-action class="spinning-button call_to_action third-up">
		<div class="image">
			<img class="active" src="/assets/main/icons/ruletka.svg" alt="ruletka">
			<div class="disabled">
				<img src="/assets/main/icons/freeicon.svg" alt="freeicon">
			</div>
		</div>
		<div class="content">
			<h2>Пригласите нашего специалиста для проведения замеров</h2>
			<p>Рассчитаем точные параметры будущей конструкции, назовем цену, сроки изготовления и ответим на любые вопросы на месте.</p>
		</div>
		<div class="button">
			<a class="btn btn-primary" href="#">Пригласить специалиста</a>
			<img src="/assets/main/icons/freeicon.svg" alt="freeicon">
		</div>
	</call-to-action>

</main>

<footer>
	<p>ПринтСпринт &copy; 1999-2020 </p>
	<a href="#" target="_blank">Политика конфиденциальности</a>
</footer>

<script src="/assets/default/JavaScript/main.js"></script>
<script src="/assets/main/scripts/assets/slick.min.js"></script>
<script src="/assets/main/scripts/elements.js"></script>
<script src="/assets/main/scripts/app.js"></script>
<script src="/assets/main/scripts/layout.js"></script>
</body>
</html>