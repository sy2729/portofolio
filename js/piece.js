
riot.tag2('piece', '<div class="container"> <div class="container-inner"> <div class="info"> <div class="info-text"> <h1>{name}</h1> <p>{description}</p> <button type="button" name="button" onclick="{openDescrip}">Description</button> </div> <div class="info-pic" onmousemove="{mouseover}"> <img riot-src="{i}" alt="{name}" each="{i in image}" class="animate-slide"> <a type="button" name="button" href="{link}">View</a> <div class="info-shade"></div> </div> </div> </div> </div>', 'piece .container,[data-is="piece"] .container{ width: 100%; height: 100%; background-position: center; background-repeat: no-repeat; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; background: #fff; } piece .container-inner,[data-is="piece"] .container-inner{ height: 100%; background: #fff; } piece .container-inner h1,[data-is="piece"] .container-inner h1,piece p,[data-is="piece"] p{ color: #222; } piece .container-inner p,[data-is="piece"] .container-inner p{ padding: 20px 0; } piece .info,[data-is="piece"] .info{ height: 100%; display: flex; justify-content: space-around; align-items: center; flex-wrap: wrap; overflow: hidden; } piece .info-text,[data-is="piece"] .info-text{ flex-basis: 2; min-width: 400px; margin-bottom: 20%; } piece .info-text h1,[data-is="piece"] .info-text h1{ text-transform: uppercase; } piece .info-text button,[data-is="piece"] .info-text button{ background: transparent; transition: all .3s; padding: 15px 50px; border: 1px solid #222; color: #222; } piece .info-text button:hover,[data-is="piece"] .info-text button:hover{ cursor: pointer; background: rgba(190, 190, 190, 0.3); color: inherit; } piece .info-pic,[data-is="piece"] .info-pic{ flex-basis: 1; width: 40%; min-width: 300px; position: relative; overflow: hidden; position: relative; display: flex; } piece .info-pic img,[data-is="piece"] .info-pic img{ width: 99.999%; height: auto; transition: all 0.3s; transform: translate3d(0, 0, 0); position: relative; filter: brightness(0.9); align-self: center; } piece .info-shade,[data-is="piece"] .info-shade{ position: absolute; top: 0; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.5); display: block; opacity: 0; transition: all .3s; } piece .info-pic img:hover,[data-is="piece"] .info-pic img:hover{ cursor: pointer; } piece .info-pic a,[data-is="piece"] .info-pic a{ position: absolute; margin-top: -22.5px; top: 50%; left: 50%; margin-left: -63px; padding: 15px 50px; border: 1px solid #fff; background: transparent; z-index: 1000; color: #fff; opacity: 0; transition: all .3s; text-decoration: none; } piece .info-pic a:hover,[data-is="piece"] .info-pic a:hover{ opacity: 1; background: rgba(240, 240, 240, 0.5); cursor: pointer; } piece .info-pic:hover a,[data-is="piece"] .info-pic:hover a{ opacity: 1; -webkit-backdrop-filter: blur(2px); } piece .info-pic:hover .info-shade,[data-is="piece"] .info-pic:hover .info-shade{ display: block; opacity: 1; } piece .animate-slide,[data-is="piece"] .animate-slide{ -webkit-animation: slide 15s ease-in-out infinite; animation: slide 15s ease-in-out infinite; } @keyframes slide { 0%{ transform: translateX(0%); } 25%{ transform: translateX(-100%); } 50%{ transform: translateX(-100%); } 75%{ transform: translateX(0%); } 100%{ transform: translateX(0%); } } @-webkit-keyframes slide { 0%{ -webkit-transform: translateX(0%); } 25%{ -webkit-transform: translateX(-100%); } 50%{ -webkit-transform: translateX(-100%); } 75%{ -webkit-transform: translateX(0%); } 100%{ -webkit-transform: translateX(0%); } }', '', function(opts) {

    var that = this;

    this.openDescrip = function(event) {
      this.parent.infoPassedToDescrip = event.item.descriptionPassed;
      this.parent.descripShow = true;
      this.parent.update();
      this.parent.tags.portofoliodescription.update();
      document.querySelector('body').classList.add('prevent-scroll')
    }

    console.log(this)

    this.on("mount", function() {

    })

});
