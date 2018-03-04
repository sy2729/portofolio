
<media>
  <video autoplay loop id="video-background" muted plays-inline each = { videoProject } if = {vid === videoId}>
    <source src={ videoSrc1 } type="video/mp4">
  </video>
  <div class="content" if = {vid === videoId} each= { videoProject }>
    <div class="text">
      <h2>{ title }</h2>
      <p class="description">{ description }</p>
    </div>
    <iframe width="400px" height="225" src={ youtubeID } frameborder="0" allow="autoplay; encrypted-media" allowfullscreen  id="youtubeVideo"></iframe>
  </div>

  <button onclick = {change} id="changeProject">The Next</button>



  <script>
    this.videoId = 1;

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
      }
    ]

    this.change = function() {
      if (this.videoId < this.videoProject.length) {
        this.videoId++;
      }else {
        this.videoId = 1;
      }

    }

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
      -webkit-animation: fadeinBlur 2s ease-in-out;
      animation: fadeinBlur 2s ease-in-out;
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
      background: rgba(190, 190, 190, 0.3);
      color: inherit;
    }

    .content {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;

    }

    .text {
      flex-basis: 2;
      margin-top: 15%;
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
      font-size: 0.9em;
      line-height: 2em;
    }

    iframe {
      flex-basis: 1;
      margin-top: 20%;
    }

    #youtubeVideo {
      
    }
  </style>
</media>
