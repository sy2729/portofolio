
<portofolio>
  <piece each={project}></piece>
  <portofolio-description if={descripShow}></portofolio-description>


  <script>
    this.descripShow = false;

    this.project = [
      {
        name: "GYL Learning Platform",
        description: "A better way to self-taught programming in a fast pace",
        image: "./img/gyl1.jpg",
        background: "url('./img/gyl1.jpg')",
        link: "http://esite.io/projects/D02229f6761fd1849f270a18dec7d02a5/site/index.html"
      },
      {
        name: "Second-Hand Market",
        description: "Trade Gracefully with your second-hand exhibition",
        image: "./img/market1.jpg",
        background: "url('./img/market1.jpg')",
        link: "https://sy2729.github.io/second-hand-market/"
      },
      {
        name: "Renited",
        description: "A real-time SaaS ERP platform for tomorrow's small business.",
        image: "./img/renited.jpg",
        background: "url('./img/renited.jpg')",
        link: "http://renited.io/welcome"
      }
    ]
  </script>

  <style>

  </style>
</portofolio>
