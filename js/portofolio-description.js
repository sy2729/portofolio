riot.tag2('portofolio-description', '<div class="container"> <div class="close" onclick="{close}"> <i class="fa fa-times"></i> </div> lorem </div>', 'portofolio-description .container,[data-is="portofolio-description"] .container{ position: fixed; top: 0; bottom: 0; left: 0; right: 0; margin: auto; width: 80%; height:90%; background: #fff; animation: fadein 2s ease-in-out; } portofolio-description .close,[data-is="portofolio-description"] .close{ margin: 10px; float: right; font-size: 15px; background: transparent; width: 50px; height: 50px; transition: all .4s; display: flex; justify-content: center; align-items: center; transition: all .4s; overflow: hidden; } portofolio-description .close:hover,[data-is="portofolio-description"] .close:hover{ cursor: pointer; background: #222; } portofolio-description .close:hover,[data-is="portofolio-description"] .close:hover{ color: #fff !important; } portofolio-description .close i,[data-is="portofolio-description"] .close i{ color: #222; font-size: 20px; }', '', function(opts) {
    this.close = function() {
      this.parent.descripShow = false;
      this.parent.update();
    }
});
