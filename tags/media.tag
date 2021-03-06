
<media>
  <div onclick = { activateSlideIn } if={ !this.slideIn }>
    <i class="fas fa-list-ul openSlide" ></i>
  </div>
  <div class={ sidebar: true, slideIn: slideIn}>
    <span onclick = { activateSlideIn } if={ this.slideIn }><i class="fas fa-arrow-circle-left closeSlide"></i></span>
    <div class="bar-wrap">
      <div each={ video in videoProject } class={bar: true, active: video.vid === videoId} onclick={changeVideo} ><p>
        { video.title } 
      </p></div>
    </div>
  </div>
  <video autoplay loop id="video-background" muted plays-inline each = { videoProject } if = {vid === videoId} ref="video">
    <source src={ videoSrc1 } type="video/mp4">
  </video>
  <div class="backupBackground"></div>
  <div class="content" if = {vid === videoId} each= { videoProject }>
    <div class="text">
      <h2>{ title }</h2>
      <p class="description">{ description }</p>
    </div>
    <iframe width="400px" height="225" src={ youtubeID } frameborder="0" allow="autoplay; encrypted-media" allowfullscreen  id="youtubeVideo"></iframe>
  </div>

  <button onclick = {change} id="changeProject">The Next</button>



  <script>
    that = this;
    this.videoId = 1;
    this.slideIn = false;
    this.videoProject = [
      {
        vid: 1,
        title: "Where AM I From",
        description: "An assignment from a course in Teachers College, Columbia University named Culture, Media and Education. It's inspired by the poem of \"where AM I From \" by George Ella Lyon. She also initialize this activity collecting art piece from the world, narrating about each individual's origin and reflection.",
        videoSrc1: "./video/intro1.mp4",
        youtubeID: "https://www.youtube.com/embed/8kWDH6cejB4"
      },{
        vid: 2,
        title: "Media and Life",
        description: "A reflection on the overwhelming information from our mobile devices and the essence of life. How the media and technology is shaping us and our society.",
        videoSrc1: "./video/intro2.mp4",
        youtubeID: "https://www.youtube.com/embed/dmJO491mVao"
      },{
        vid: 3,
        title: "Environmentalism Trip",
        description: "In August 2017, I accompanied with a team of young kids as a photographer to explore the beauty of nature and unveil the mistery of the forest. Leaded by several staffs of the environmental nonprofit conservation and education organization, the goal of this trip is to educate the kids about the environmentally friendly way of living with the nature",
        videoSrc1: "./video/intro3.mp4",
        youtubeID: "https://www.youtube.com/embed/hGptZmEDqkY"
      }, {
        vid: 4,
        title: "Interviewing the Dilligent Chinese Girl in Columbia University",
        description: "This is my friend's course project on interviewing interesting and inspiring people in NYC, listening to their stories, documenting them and learning from them.",
        videoSrc1: "./video/intro4.mp4",
        youtubeID: "https://www.youtube.com/embed/ALUSbmb9kP4"
      },
      {
        vid: 5,
        title: "Bachelor Graduation Ceremony Video in CCNU",
        description: "Right before I graduate from my undergraduate school, I started to learn photography and videography and then made this video to record the great memories of the four years. I used sliders, photography lights, triapod, DSLR to accomplish this video production",
        videoSrc1: "./video/intro5.mp4",
        youtubeID: "https://www.youtube.com/embed/ZdtILGuo6IQ"
      }, 
      {
        vid: 6,
        title: "GH5 Unboxing & Sample Shot Vlog",
        description: "I got my first GH5, which is a really great video-shooting camera. I shot some great sample videos in V-log mode and color graded them.",
        videoSrc1: "./video/intro6.mp4",
        youtubeID: "https://www.youtube.com/embed/-1ZyOfgzbkM"
      },
      {
        vid: 7,
        title: "Columbia University Chinese Spring Festival Celebration Micro Film",
        description: "Every year, we Chinese International Students celebrate our Spring Festival in our unique way. This time, we shot a short film reflecting on our intensive life and optimistic attitude towards the future. I was responsible for shooting.",
        videoSrc1: "./video/intro7.mp4",
        youtubeID: "https://www.youtube.com/embed/kJ4Ere29BO0"
      }
    ]

    change() {
      if (this.videoId < this.videoProject.length) {
        this.videoId++;
      }else {
        this.videoId = 1;
      }

    }

    changeVideo(e) {
      this.videoId = e.item.video.vid;
      this.slideIn = false;
    }

    activateSlideIn() {
        this.slideIn = !this.slideIn;
    }

    // this.on('mount', function() {

    //   that.triggerSlide = function() {
    //   
    //     console.log('sdsd');
        
    //   }
    // triggerSlide() {

    // }

    // })

    this.on('mount', ()=>{
      var width = window.innerWidth;
      if(width <= 600) {
        this.refs.video.removeAttribute('autoplay');
        this.refs.video.removeAttribute('autoplay');
        this.refs.video.children[0].removeAttribute('src');
      }

    })
  </script>

  <style>
    #video-background {
    /*  making the video fullscreen  */
      position: fixed;
      right: 0; 
      bottom: 0;
      min-width: 100%; 
      min-height: 100%;
      width: auto; 
      height: auto;
      z-index: -100;
      -webkit-filter: blur(4px) !important;
      filter: blur(4px) !important;
      -webkit-animation: fadeinBlur .4s ease-in-out;
      animation: fadeinBlur .4s ease-in-out;
    }

    #changeProject {
      position: absolute;
      bottom: 5%;
      right: 5%;
      background: transparent;
      transition: all .3s;
      padding: 15px 50px;
      border: 1px solid #fff;
      color: #fff;   
    }

    #changeProject:hover {
      cursor: pointer;
      background: rgba(255, 255, 255, 0.3);
      box-shadow: 2px 2px 12px 5px rgba(255, 255, 255, 0.3);
    }

    .content {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;

    }

    .text {
      flex-basis: 2;
      /* Shouldn't use margin-top percentage on flex items in firefox, not supported */
      /* margin-top: 15%; */
      margin-top: 150px;
      min-width: 350px;
      color: #fff;
      box-sizing: border-box;
    }

    .text h2 {
      max-width: 350px;
      line-height: 1.5em;
    }

    .description {
      max-width: 350px;
      font-weight: 100;
      font-size: 0.95em;
      line-height: 2em;
    }

    iframe {
      flex-basis: 1;
      /* Shouldn't use margin-top percentage on flex items in firefox, not supported */
      /* margin-top: 20%;  */
      margin-top: 200px;
    }

    #youtubeVideo {
      position: relative;
    }

    .backupBackground {
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      background: transparent;
    }

    .sidebar {
      position: fixed;
      left: -400px;
      top: 0;
      width: 400px;
      height: 100vh;
      background: rgba(0, 0, 0, 0.8);
      color: #fff;
      box-sizing: border-box;
      z-index: 1000;
      transition: all 0.5s;
    }

    .bar-wrap {
      overflow: auto;
    }

    .sidebar.slideIn {
      left: 0px;
    }

    .sidebar .bar {
      padding: 8px;
      cursor: pointer;
    }
    .sidebar .bar > p {
      line-height: 1.3em;
    }

    .active {
      background: rgba(255, 255, 255, 0.5);
      
    }

    .bar:hover {
      background: rgba(255, 255, 255, 0.2);
    }

    .openSlide, .closeSlide {
      position: fixed;
      cursor: pointer;
      color: #fff;
      font-size: 30px;
      z-index: 2000;
    }

    .openSlide {
      left: 25px;
      top: 25px;
    }

    .closeSlide {
      position: absolute;
      right: -40px;
      top: 24px;
    }
  </style>
</media>
