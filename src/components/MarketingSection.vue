<template>
  <div class="bg-white p-8 flex flex-col gap-4">
    <h2 class="text-6xl md:p-8">What's FDM Monster?</h2>

    <div ref="section1" class="bg-red-950 text-white py-8 px-4 rounded-xl md:flex items-center gap-12 max-w-6xl">
      <img src="/farm.jpeg" class="rounded-xl max-w-full md:h-80" />
      <div>
        <div class="text-4xl mb-4">Farm Solution</div>
        <div>Looking for a good solution to manage your print farm, with a workflow that is suitable for both business and hobbie?</div>
      </div>
    </div>
    <div ref="section2" class="bg-gray-950 text-white p-8 rounded-xl md:flex items-center gap-8 max-w-4xl ml-auto">
      <div>
        <div class="text-4xl mb-4">Open Source</div>
        <div>
          The project is entirely open-source, <a href="https://github.com/fdm-monster" class="text-red-500">check it out on GitHub ❤️</a>
        </div>
      </div>
      <img src="/github.png" class="rounded-xl max-w-full md:h-80" />
    </div>

    <div ref="section3" class="bg-gray-950 text-white p-8 rounded-xl md:flex items-center gap-8 max-w-4xl justify-end">
      <img src="/demo_1.png" class="rounded-xl max-w-full md:h-80" />
      <div class="">
        <div class="text-4xl mb-4">Interested?</div>
        <div>We have a demo you can try today!</div>
        <a class="text-red-600 hover:text-red-600 cursor-pointer" href="">Head on to live demo</a>
      </div>
    </div>
  </div>
</template>
<script setup lang="ts">
import { gsap } from 'gsap';
import { ref, unref, onMounted } from 'vue';
import { ScrollTrigger } from 'gsap/ScrollTrigger';

const section1 = ref(null);
const section2 = ref(null);
const section3 = ref(null);
const animationVars = [
    {
      opacity: 0,
      x: -100,
    },
    {
      opacity: 1,
      x: 0,
      duration: 1.5,
    },
  ]

const reversedAnimationVars = [
    {
      opacity: 0,
      x: 100,
    },
    {
      opacity: 1,
      x: 0,
      duration: 1.5,
    },
  ]

gsap.registerPlugin(ScrollTrigger);

onMounted(() => {
  [section1, section2, section3].forEach((section, index) => {
    const animation = gsap
      .fromTo(
        unref(section),
        index%2 ? reversedAnimationVars[0] : animationVars[0],
        index%2 ? reversedAnimationVars[1] : animationVars[1],
      )
      .pause();

    ScrollTrigger.create({
      trigger: unref(section),
      start: 'top 80%',
      end: 'bottom 20%',
      onEnter: () => animation.play(),
      onEnterBack: () => animation.play(),
      onLeaveBack: () => animation.reverse(),
    });
  });
});
</script>