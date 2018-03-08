
<info>
  <div class="info-container">
    <div class="profile">
      <div class="profile-image">
        <div class="profile-shade"></div>
      </div>
    </div>

    <div class="resume">
      <h2 class="title accordion">Education</h2>
      <hr>
      <div class="panel">
        <div class="main">
          <h4 class="subTitle">2013.07-2017.06</h4>
          <h4 class="subTitle">Central China Normal University</h4>
          <h4 class="subTitle">Teaching Chinese As A Second Language - Bachelor</h4>
        </div>
        <div class="main">
          <h4 class="subTitle">2017.09-2019.05</h4>
          <h4 class="subTitle">Teachers College, Columbia University</h4>
          <h4 class="subTitle">Instructional Technology and Media - Master</h4>
        </div>

        <h5>Main Courses:</h5>
        <p>Interactive Programming, Design Theories, Media Production, Data Visualization, and computational art</p>
        
      </div>
      <h2 class="title accordion">Working Experience</h2>
      <hr>
      <div class="panel">
        <div class="main">
          <h4 class="subTitle">2017.09-2018.01</h4>
          <h4 class="subTitle">Renited Inc.</h4>
          <h4 class="subTitle">Front-End Dev Intern</h4>
        </div>
        <ul class="panel-content">
          <li>Build company’s new landing page through the Streaming Building System Gulp.</li>
          <li>Utilize Element UI in combined with Vue.js to beautify the user system, take part in the development of several components.</li>
          <li>Use CSS framework Bootstrap to modify company’s previous landing page.</li>
          <li>Communicate and collaborate with the back-end developer and product manager to enhance the user experience.</li>
        </ul>
        <div class="main">
          <h4 class="subTitle">2017.07-2017.08</h4>
          <h4 class="subTitle">MGC Inc.</h4>
          <h4 class="subTitle">Content Manager</h4>
        </div>
        <ul class="panel-content">
          <li>Researched on targeted user of our educational product and scheduled explicit content for advertisement.</li>
          <li>Participated in some visual design process, including the production of advertisement and poster.
          </li>
        </ul>
        <div class="main">
          <h4 class="subTitle">2017.01-2017.2017.3</h4>
          <h4 class="subTitle">CHAOYOUAI Technology Inc.</h4>
          <h4 class="subTitle">Editor and Media Producer</h4>
        </div>
        <ul class="panel-content">
          <li>Produced audio media and graphic materials for users of the company’s educational application.</li>
        </ul>
      </div>
      <h2 class="title accordion">Project Experience</h2>
      <hr>
      <div class="panel">
        <div class="main">
          <h4 class="subTitle">2017.09-12</h4>
          <h4 class="subTitle">GYL Learning System</h4>
          <h4 class="subTitle">Front-end Development and UX Design</h4>
        </div>
        <ul class="panel-content">
          <li>Utilized Bootstrap to design and build the demo system as a course project.</li>
          <li>Collaborated with group member to design various functionality to enhance user experience</li>
        </ul>
      </div>
      <h2 class="title accordion">Skill Stack</h2>
      <hr>
      <div class="panel">
        <ul class="panel-content">
          <li>Proficiency with new features of HTML5, CSS3, and ES6, understanding of web standard.</li>
          <li>Familiarity with Bootstrap, JQuery and Sass, ability to quickly create mobile-friendly and responsive prototype.</li>
          <li>Passion in interaction design and its application in web and mobile, with the assistance of SVG and Canvas.</li>
          <li>Proficiency with Adobe Creative Suite and Sketch etc., familiarity of using Axure, Principle, and OmniGraffle.</li>
          <li>Ability of adapt to front-end development environment with experience of using Vue.js and Git.</li>
          <li>Deep understanding of video production, specifically in post-production and its utilization of motion graphics for creating pleasing interaction with audience.</li>
        </ul>
      </div>
      <h2 class="title accordion">Self-Evaluation</h2>
      <hr>
      <div class="panel">
        <p>
           I’m passionate about Web and User Interface design, with close observation of the latest trends in those design fields.
          I have solid skills in creating design prototype through front-end development and proficiency of using design software.
          With my pursuit of aesthetic details, I am able to precisely communicate my idea and design thoughts with my clients and
          partners.
        </p>
      </div>
    </div>
  </div>




  <script>
    this.on('mount', function() {
      var acc = document.getElementsByClassName("accordion");
      var i;

      for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function () {
          var hr = this.nextElementSibling;
          var panel = hr.nextElementSibling;
          if (panel.style.maxHeight) {
            panel.style.maxHeight = null;
          } else {
            panel.style.maxHeight = panel.scrollHeight + "px";
          }
        });
      }
    })
  </script>

  <style>
    .info-container {
      width: 100%;
      height: 100%;
      animation: fadein 3s ease-in-out;
      background: #fff;
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
    }

    .profile {
      display: flex;
      align-items: center;
      -webkit-flex: 1 1 15em;
      -moz-flex: 1 1 15em;
      flex: 1 1 15em;
    }

    .profile-image {
      width: 100px;
      height: 100px;
      background-image: url(./img/2.jpg);
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
      border-radius: 50%;
      border: 1px solid #aaa;
      margin: 0 auto;
      position: relative;
      animation: antiMove 5s cubic-bezier(0.13, 0.5, 0.42, 1) infinite;
      -moz-animation: antiMove 5s cubic-bezier(0.13, 0.5, 0.42, 1) infinite;
    }

    @keyframes antiMove {
      0% {
        transform: translateY(0px);
      }
      33.3% {
        transform: translateY(-10px);
      }
      66.6% {
        transform: translateY(0px);
      }
      100% {
        transform: translateY(0px);
      }
    }

    .profile-shade {
      position: absolute;
      height: 30px;
      width: 100px;
      bottom: -50px;
      border-radius: 80%;
      background:rgba(20, 20, 20, 0.5);
      filter: blur(10px);
      -webkit-filter: blur(10px);
      -ms-filter: blur(10px);
      animation: move 5s cubic-bezier(0.13, 0.5, 0.42, 1) infinite;
      -moz-animation: move 5s cubic-bezier(0.13, 0.5, 0.42, 1) infinite;
    }

    @keyframes move {
      0% {
        transform: translateY(0px);
        background: rgba(20, 20, 20, 0.5);
      }
      33.3% {
        transform: translateY(20px);
        background: rgba(20, 20, 20, 0.2);
      }
      66.6% {
        transform: translateY(0px);
        background: rgba(20, 20, 20, 0.5);
      }
      100% {
        transform: translateY(0px);
        background: rgba(20, 20, 20, 0.5);
      }
    }

    

    .resume {
      padding: 10% 2%;
      width: 60%;
      height: 100%;
      min-width: 400px;
      overflow: scroll;
      box-sizing: border-box;
    }

    .title {
      width: 100%;
      text-transform: uppercase;
    }

    .title:hover {
      cursor: pointer;
    }

    .panel {
      padding: 0 18px;
      background-color: white;
      max-height: 0;
      overflow: hidden;
      transition: max-height 0.3s cubic-bezier(0.82, 0.29, 0.07, 0.7);
    }

    .main {
      display: flex;
      justify-content: space-between;
    }

    .panel-content {
      font-family: 'Roboto', sans-serif;
    }
    
  </style>
</info>
