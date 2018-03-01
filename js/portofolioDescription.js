riot.tag2('portofoliodescription', '<div class="close" onclick="{close}"> <i class="fa fa-times"></i> </div> <div class="container"> <div class="description-info-wrap"> <div class="description-info-each" each="{descripInfo}"> <p>{descriptionWords}</p> <img riot-src="{image}" alt=""> </div> </div> </div>', 'portofoliodescription .container,[data-is="portofoliodescription"] .container{ position: fixed; top: 0; bottom: 0; left: 0; right: 0; margin: auto; width: 80%; height:90%; background: #fff; animation: fadein 2s ease-in-out; overflow: auto; z-index: 100001; border: 1px solid; } portofoliodescription .close,[data-is="portofoliodescription"] .close{ position: fixed; top: 20px; right: 20px; font-size: 15px; background: transparent; width: 50px; height: 50px; transition: all .4s; display: flex; justify-content: center; align-items: center; transition: all .4s; right: 10px; top: 10px; z-index: 100002; animation: fadein 2s ease-in-out; } portofoliodescription .close:hover,[data-is="portofoliodescription"] .close:hover{ cursor: pointer; background: #222; } portofoliodescription .close:hover,[data-is="portofoliodescription"] .close:hover{ color: #fff; } portofoliodescription .close i,[data-is="portofoliodescription"] .close i{ color: #222; font-size: 20px; } portofoliodescription .description-info-each,[data-is="portofoliodescription"] .description-info-each{ display: flex; justify-content: space-around; flex-wrap: wrap; padding: 40px 0; position: relative; z-index: 99; } portofoliodescription .description-info-each p,[data-is="portofoliodescription"] .description-info-each p{ max-width: 300px; min-width: 100px; } portofoliodescription .description-info-each img,[data-is="portofoliodescription"] .description-info-each img{ width: 50%; align-self: center }', '', function(opts) {

    this.on('update', function() {
      this.descripInfo = this.parent.infoPassedToDescrip;
      console.log(this.descripInfo.image)
    })

    this.close = function() {
      this.parent.descripShow = false;
      this.parent.update();
      document.querySelector('body').classList.remove('prevent-scroll')
    }
});
