
<portofolio>
  <piece each={project}></piece>
  <portofolioDescription if={descripShow}></portofolioDescription>


  <script>
    this.descripShow = false;
    this.infoPassedToDescrip = {};

    this.project = [
      {
        name: "GYL Learning Platform",
        description: "A better way to self-taught programming in a fast pace",
        image: ["./img/gyl1.jpg","./img/gyl2.jpg", "./img/gyl3.jpg"],
        background: "url('./img/gyl1.jpg')",
        link: "http://esite.io/projects/D02229f6761fd1849f270a18dec7d02a5/site/index.html",
        role: ["Curriculum Designer", "Web Dev"],
        technology: ["Bootstrap","Jquery"],
        descriptionPassed: [
          {
            image: "./img/gyl1.jpg",
            descriptionWords: "This is the brain child of three Columbia University students. In taking the course of Instructional Design, having lots of discussion on educational innovation along with the popularization of technology, we decideded to take advantages of what we have learned in our coding and design theory course to further our imagination."
          },
          {
            image: "./img/gyl2.jpg",
            descriptionWords: "Considering the significance of being able to code or at least undestand the basic logics behind the codes, we divided our learners into two learning groups. One is those who wish to learn programming as their career and another is those who wish to add to their current skill stack and increase their career opportunities by learning basic coding."
          },
          {
            image: "./img/gyl3.jpg",
            descriptionWords: "Pointing out some shortcomes of other code-learning platforms, we aim to connect those resources and minimize their time wastes through our curriculum design and structures."
          }
        ]
      },
      {
        name: "Second-Hand Market",
        description: "Trade Gracefully with your second-hand exhibition",
        image: ["./img/market1.jpg","./img/market2.jpg","./img/market3.jpg"],
        background: "url('./img/market1.jpg')",
        link: "https://sy2729.github.io/second-hand-market/",
        role: ["Web Dev"],
        technology: ["Riot.js"],
        descriptionPassed: [
          {
            image: "./img/market1.jpg",
            descriptionWords: "International students have to face the cruel reality that most of them would only be able to stay in the city of their universities for only 2 years. So they have to worry about how to deal with their second-hand furnitures or electronics. It's hard to sale their price with a satisfactory price especially they have no advantage in language and are hurried to leave."
          },
          {
            image: "./img/market2.jpg",
            descriptionWords: "So this website is able to provide a space to exhibit their used goods in graceful way. They could upload the goods' pictures and descriptions, set the price and have their contacts attached"
          },
          {
            image: "./img/market3.jpg",
            descriptionWords: "It's currently still in development. I'm still working on it to connect it with server to enable the user login and authentication function."
          }
        ]
      },
      {
        name: "Renited",
        description: "A real-time SaaS ERP platform for tomorrow's small business.",
        image: ["./img/renited.jpg","./img/renited2.jpg", "./img/renited4.jpg"],
        background: "url('./img/renited.jpg')",
        link: "http://renited.io/welcome",
        role: ["Front-end Design", "UX Design"],
        technology: ["Gulp", "Sass"],
        descriptionPassed: [
          {
            image: "./img/renited.jpg",
            descriptionWords: "During my short internship in the Renited Inc., I created some landing pages and help contribute to the user interface beautification of the internal user system"
          },
          {
            image: "./img/renited2.jpg",
            descriptionWords: "It's my first trying to get hands dirty on using gulp and being able to acheive front-end automation and getting more familiar with CSS compiler -- Sass, and realized how efficient and convenient it is."
          },
          {
            image: "./img/renited4.jpg",
            descriptionWords: "Our team use Vue.js as the front-end framework in production. So in order to modify and improve the user interface, I use the elementUI, a UI framework to assist with the development."
          }
        ]
      }
    ]

    this.on("update", function(){
      // console.log(this.imagePassedToDescrip)
    })
  </script>

  <style>

  </style>
</portofolio>
