
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
        image: ["./img/gyl1.jpg","./img/market2.jpg"],
        background: "url('./img/gyl1.jpg')",
        link: "http://esite.io/projects/D02229f6761fd1849f270a18dec7d02a5/site/index.html",
        descriptionPassed: [
          {
            image: "./img/gyl1.jpg",
            descriptionWords: "This is the brain child of three Columbia University students. In taking the course of Instructional Design, having lots of discussion on educational innovation along with the popularization of technology, we decideded to take advantages of what we have learned in our coding and design theory course to further our imagination."
          },
          {
            image: "./img/gyl2.jpg",
            descriptionWords: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupi"
          }
        ]
      },
      {
        name: "Second-Hand Market",
        description: "Trade Gracefully with your second-hand exhibition",
        image: ["./img/market1.jpg","./img/market2.jpg"],
        background: "url('./img/market1.jpg')",
        link: "https://sy2729.github.io/second-hand-market/",
        descriptionPassed: [
          {
            image: "./img/market1.jpg",
            descriptionWords: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupi"
          },
          {
            image: "./img/market2.jpg",
            descriptionWords: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupi"
          }
        ]
      },
      {
        name: "Renited",
        description: "A real-time SaaS ERP platform for tomorrow's small business.",
        image: ["./img/renited.jpg","./img/market2.jpg"],
        background: "url('./img/renited.jpg')",
        link: "http://renited.io/welcome",
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
      // console.log(this.imagePassedToDescrip)
    })
  </script>

  <style>

  </style>
</portofolio>
