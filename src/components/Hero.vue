<template>
  <div>
    <div class="relative isolate px-6 md:h-screen py-8 lg:px-8 bg-repeat bg-[url('/pattern.svg')] bg-left-top">
      <div class="mx-auto max-w-2xl py-16 md:py-48">
        <div class="mb-4 flex justify-center">
          <img id="main-hero-project-icon" src="/assets/logo.svg" class="h-44" />
        </div>
        <div class="text-center">
          <h1 class="text-4xl font-bold tracking-tight text-white sm:text-6xl">FDM Monster</h1>
          <p class="mt-6 text-lg leading-8 text-gray-300 mb-2">Are you ready to scale up your 3D Print farm using OctoPrint instances?</p>

          <div class="mt-10 flex items-center justify-center gap-x-6">
            <a
              href="#"
              class="rounded-md text-lg bg-red-600 px-4 py-2.5 font-semibold text-white shadow-sm hover:bg-red-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-red-600"
              >Let's Print!</a
            >
            <a href="#" class="text-sm font-semibold leading-6 text-white">Learn more <span aria-hidden="true">→</span></a>
          </div>
        </div>
      </div>
      <Socials />
    </div>
  </div>
</template>
<script setup lang="ts">
import { Icon } from '@iconify/vue';
import Socials from '@/components/Socials.vue';
</script>
<style scoped>
#main-hero-project-icon {
  animation: fadeIn 2s ease;
  animation-iteration-count: 1;
  animation-fill-mode: forwards;
  opacity: 0;
}

@keyframes fadeIn {
    from { opacity: 0; }
    to   { opacity: 1; }
}
</style>
