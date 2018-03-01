
riot.tag2('portofolio', '<piece each="{project}"></piece> <portofoliodescription if="{descripShow}"></portofolioDescription>', '', '', function(opts) {
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
            descriptionWords: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupi"
          },
          {
            image: "./img/market2.jpg",
            descriptionWords: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupi"
          },
          {
            image: "./img/market3.jpg",
            descriptionWords: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupi"
          }
        ]
      },
      {
        name: "Renited",
        description: "A real-time SaaS ERP platform for tomorrow's small business.",
        image: ["./img/renited.jpg","./img/renited2.jpg"],
        background: "url('./img/renited.jpg')",
        link: "http://renited.io/welcome",
        role: ["Front-end Design", "UX Design"],
        technology: ["Gulp", "Sass"],
        descriptionPassed: [
          {
            image: "./img/renited.jpg",
            descriptionWords: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupi"
          },
          {
            image: "./img/renited2.jpg",
            descriptionWords: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupi"
          }
        ]
      }
    ]

    this.on("update", function(){

    })
});
