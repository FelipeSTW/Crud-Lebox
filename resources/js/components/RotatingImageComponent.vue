<template>
    <div>
      <div class="scope">
        <span style="--i:1;"><img src="/images/1.png" alt="not found"></span>
        <span style="--i:2;"><img src="/images/2.png" alt="not found"></span>
        <span style="--i:3;"><img src="/images/3.png" alt="not found"></span>
        <span style="--i:4;"><img src="/images/4.png" alt="not found"></span>
        <span style="--i:5;"><img src="/images/5.jpg" alt="not found"></span>
        <span style="--i:6;"><img src="/images/6.jpg" alt="not found"></span>
        <span style="--i:7;"><img src="/images/7.jpg" alt="not found"></span>
        <span style="--i:8;"><img src="/images/8.png" alt="not found"></span>
      </div>

      <!-- <div class="music">
         <audio controls autoplay>
            <source src="@/assets/mus/Interstellar theme song - video.mp3" type="audio/ogg">
            <source src="/images/soundtrax.mp3" type="audio/mpeg">
          Your browser does not support the audio element.
        </audio>
      </div> -->
    </div>
  </template>

  <script>
  export default {
    name: "RotatingImageComponent"
  };
  </script>

  <style>

body {
    margin: 0;
    padding: 0;
    box-sizing: border-box;

    justify-content: right;
    align-items: center;
    height: 100vh;
    background: #0f2027;
    background: -webkit-linear-gradient(to right, #2c5364, #203a43, #0f2027);
  }
  .scope {
    position: relative;
    width: 200px;
    height: 130px;
    transform-style: preserve-3d;
    animation: slid 30s linear infinite;
    margin-bottom:65px;
  }

  .scope span {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    transform-origin: lcenter;
    transform-style: preserve-3d;
    transform: rotateY(calc(var(--i) * 45deg)) translateZ(350px);
  }
  .scope span img {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border-radius: 10px;
    object-fit: cover;
    transition: 2s;
  }
  .scope span:hover img {
    transform: translateY(-50px) scale(1.7);
  }
  @keyframes slid {
    0% {
      transform: perspective(1000px) rotateY(0deg);
    }
    100% {
      transform: perspective(1000px) rotateY(360deg);
    }
  }


  .music
  {
    margin-left: auto;
    margin-right:auto;
    margin-top: auto;
    top: 0px;
    width:100px;
    background:#666;
    position:relative;
  }
  audio {
    margin-left: -110px;
}
ol, ul, dl {
    margin-top: 100px;
    margin-bottom: 1rem;
}

  </style>


