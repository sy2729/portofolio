
riot.tag2('media', '<video autoplay loop id="video-background" muted plays-inline each="{videoProject}" if="{vid === videoId}"> <source riot-src="{videoSrc1}" type="video/mp4"> </video> <button onclick="{change}" id="changeProject">The Next</button>', 'media #video-background,[data-is="media"] #video-background{ position: fixed; right: 0; bottom: 0; min-width: 100%; min-height: 100%; width: auto; height: auto; z-index: -100; -webkit-filter: blur(4px) !important; filter: blur(4px) !important; -webkit-animation: fadeinBlur 3s ease-in-out; animation: fadeinBlur 3s ease-in-out; } media #changeProject,[data-is="media"] #changeProject{ position: absolute; bottom: 5%; right: 5%; background: transparent; transition: all .3s; padding: 15px 50px; border: 1px solid #fff; color: #fff; } media #changeProject:hover,[data-is="media"] #changeProject:hover{ cursor: pointer; background: rgba(190, 190, 190, 0.3); color: inherit; }', '', function(opts) {
    this.videoId = 1;

    this.videoProject = [
      {
        vid: 1,
        videoSrc1: "./video/intro1.mp4",
      },{
        vid: 2,
        videoSrc1: "./video/intro2.mp4",
      },{
        vid: 3,
        videoSrc1: "./video/intro3.mp4",
      }
    ]

    this.change = function() {
      if (this.videoId < this.videoProject.length) {
        this.videoId++;
      }else {
        this.videoId = 1;
      }

    }

});
