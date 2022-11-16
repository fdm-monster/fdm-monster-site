<template>
  <v-container class="fill-height">
    <v-responsive class="d-flex align-center text-center fill-height">
      <v-img contain height="300" src="/assets/logo.svg" />

      <div class="text-body-2 font-weight-light mt-6 mb-6">Welcome to</div>

      <h1 class="text-h2 font-weight-bold">FDM-Monster</h1>

      <div class="mt-4 text-body-2">
        Are you ready to scale up your 3D Print farm using OctoPrint instances?
      </div>

      <div class="py-14" />

      <v-row class="d-flex align-center justify-center">
        <v-col cols="auto">
          <v-btn
            href="https://discord.com/invite/mwA8uP8CMc"
            min-width="164"
            rel="noopener noreferrer"
            target="_blank"
            variant="text"
          >
            <v-icon icon="mdi-view-dashboard" size="large" start />

            Our Discord
          </v-btn>
        </v-col>

        <!--        <v-col cols="auto">-->
        <!--          <v-btn-->
        <!--            color="primary"-->
        <!--            href="https://github.com/fdm-monster/fdm-monster"-->
        <!--            min-width="228"-->
        <!--            rel="noopener noreferrer"-->
        <!--            size="x-large"-->
        <!--            target="_blank"-->
        <!--            variant="flat"-->
        <!--          >-->
        <!--            <v-icon-->
        <!--              icon="mdi-speedometer"-->
        <!--              size="large"-->
        <!--              start-->
        <!--            />-->

        <!--            Get your copy-->
        <!--          </v-btn>-->
        <!--        </v-col>-->

        <v-col cols="auto">
          <v-btn
            href="https://octoprint.org/"
            min-width="164"
            rel="noopener noreferrer"
            target="_blank"
            variant="text"
          >
            <v-icon icon="mdi-account-group" size="large" start />

            OctoPrint
          </v-btn>
        </v-col>
      </v-row>
      <br />

      <button onclick="window.location.href='https://github.com/fdm-monster/fdm-monster'" class="glowing-btn"
        ><span class="glowing-txt"
          >Let's <span class="faulty-letter">P</span>rint!</span
        >
      </button>
    </v-responsive>
  </v-container>
</template>

<script setup lang="ts">
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
