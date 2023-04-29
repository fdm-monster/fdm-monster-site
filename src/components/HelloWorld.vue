<template>
  <v-container class="fill-height">
    <v-responsive class="d-flex align-center text-center fill-height">
      <v-img contain height="200" src="/assets/logo.svg" />

      <br />
      <h1 class="text-h3 mt-4 font-weight-bold">FDM Monster</h1>

      <div class="mt-4 text-body-2">
        Are you ready to scale up your 3D Print farm using OctoPrint instances?
      </div>
      <br />

      <v-row>
        <v-col>
          <v-btn
            href="https://discord.com/invite/mwA8uP8CMc"
            rel="noopener noreferrer"
            target="_blank"
            variant="text"
          >
            <v-icon icon="mdi-view-dashboard" size="large" start />

            Our Discord
          </v-btn>

          <v-btn
            href="https://docs.fdm-monster.net"
            rel="noopener noreferrer"
            target="_blank"
            variant="text"
          >
            <v-icon icon="mdi-bookshelf" size="large" start />
            Documentation
          </v-btn>

          <v-btn
            href="https://octoprint.org/"
            rel="noopener noreferrer"
            target="_blank"
            variant="text"
          >
            <v-icon icon="mdi-account-group" size="large" start />

            OctoPrint
          </v-btn>
        </v-col>
      </v-row>
      <v-row class="d-flex align-center justify-center mt-4 mb-2">
        <v-col cols="auto">
          <button
            class="glowing-btn"
            onclick="window.location.href='https://github.com/fdm-monster/fdm-monster'"
          >
            <span class="glowing-txt">
              Let's <span class="faulty-letter">P</span>rint!
            </span>
          </button>
        </v-col>
      </v-row>

      <br />
      <br />

      <v-card class="mx-auto" color="default" elevation="20" max-width="600">
        <div class="d-flex justify-between">
          <v-card-title class="flex-grow-1 flex-column align-start">
            <strong>David Zwart</strong>
            <div class="font-weight-thin">Developer FDM Monster</div>
          </v-card-title>

          <v-img
            class="flex-grow-0 float-end"
            height="100px"
            src="/DavidZwart.jpg"
            style="flex-basis: 100px"
          ></v-img>
        </div>
      </v-card>

      <v-card
        class="mx-auto mt-5"
        color="default"
        elevation="20"
        max-width="600"
      >
        <div class="d-flex justify-between">
          <v-card-title class="flex-grow-1 flex-column align-start">
            <small class="text-h7">Ewoud van Munster - MTB3D</small>
            <small class="d-block font-weight-thin">
              FDM Monster helps MTB3D scale it's 3D Printing efforts!
            </small>

            <div class="text-h6 font-weight-thin">(Nov, 2022)</div>
          </v-card-title>

          <v-img
            class="flex-grow-0"
            height="125px"
            src="/EwoudVanMunster.jpg"
            style="flex-basis: 125px"
          ></v-img>
        </div>

      </v-card>
    </v-responsive>
  </v-container>
</template>

<script lang="ts" setup>
//
</script>
<style>
@import url("https://fonts.googleapis.com/css?family=Raleway");

:root {
  --glow-color: rgb(248, 2, 2);
}

.glowing-btn {
  position: relative;
  color: var(--glow-color);
  cursor: pointer;
  padding: 0.4em 1.2em;
  border: 0.1em solid var(--glow-color);
  border-radius: 0.1em;
  background: none;
  perspective: 3em;
  font-family: "Roboto", sans-serif;
  font-size: 1.2em;
  font-weight: 5000;
  letter-spacing: 0.5em;

  -webkit-box-shadow: inset 0px 0px 0.5em 0px var(--glow-color),
    0px 0px 0.5em 0px var(--glow-color);
  -moz-box-shadow: inset 0px 0px 0.5em 0px var(--glow-color),
    0px 0px 0.5em 0px var(--glow-color);
  box-shadow: inset 0px 0px 0.5em 0px var(--glow-color),
    0px 0px 0.5em 0px var(--glow-color);
  animation: border-flicker 2s linear infinite;
}

.glowing-txt {
  float: left;
  margin-right: -0.8em;
  -webkit-text-shadow: 0 0 0.125em hsl(0 0% 100% / 0.3),
    0 0 0.45em var(--glow-color);
  -moz-text-shadow: 0 0 0.125em hsl(0 0% 100% / 0.3),
    0 0 0.45em var(--glow-color);
  text-shadow: 0 0 0.125em hsl(0 0% 100% / 0.3), 0 0 0.45em var(--glow-color);
  animation: text-flicker 3s linear infinite;
}

.faulty-letter {
  opacity: 0.1;
  animation: faulty-flicker 5s linear infinite;
}

.glowing-btn::before {
  content: "";
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  opacity: 0.7;
  filter: blur(1em);
  transform: translateY(120%) rotateX(95deg) scale(1, 0.35);
  background: var(--glow-color);
  pointer-events: none;
}

.glowing-btn::after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  opacity: 0;
  z-index: -1;
  background-color: var(--glow-color);
  box-shadow: 0 0 2em 0.2em var(--glow-color);
  transition: opacity 100ms linear;
}

.glowing-btn:hover {
  color: rgba(0, 0, 0, 0.8);
  text-shadow: none;
  animation: none;
}

.glowing-btn:hover .glowing-txt {
  animation: none;
}

.glowing-btn:hover .faulty-letter {
  animation: none;
  text-shadow: none;
  opacity: 1;
}

.glowing-btn:hover:before {
  filter: blur(1.5em);
  opacity: 1;
}

.glowing-btn:hover:after {
  opacity: 1;
}

@keyframes faulty-flicker {
  0% {
    opacity: 0.1;
  }
  2% {
    opacity: 0.1;
  }
  4% {
    opacity: 0.5;
  }
  19% {
    opacity: 0.5;
  }
  21% {
    opacity: 0.1;
  }
  23% {
    opacity: 1;
  }
  80% {
    opacity: 0.5;
  }
  83% {
    opacity: 0.4;
  }

  87% {
    opacity: 1;
  }
}

@keyframes text-flicker {
  0% {
    opacity: 0.1;
  }

  2% {
    opacity: 1;
  }

  8% {
    opacity: 0.1;
  }

  9% {
    opacity: 1;
  }

  12% {
    opacity: 0.1;
  }
  20% {
    opacity: 1;
  }
  25% {
    opacity: 0.3;
  }
  30% {
    opacity: 1;
  }

  70% {
    opacity: 0.7;
  }
  72% {
    opacity: 0.2;
  }

  77% {
    opacity: 0.9;
  }
  100% {
    opacity: 0.9;
  }
}

@keyframes border-flicker {
  0% {
    opacity: 0.1;
  }
  2% {
    opacity: 1;
  }
  4% {
    opacity: 0.1;
  }

  8% {
    opacity: 1;
  }
  70% {
    opacity: 0.7;
  }
  100% {
    opacity: 1;
  }
}

@media only screen and (max-width: 600px) {
  .glowing-btn {
    font-size: 1em;
  }
}
</style>
