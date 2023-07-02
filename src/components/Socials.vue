<template>
  <div class="flex flex-col md:flex-row gap-2 md:justify-around md:gap-4 text-white">
    <a
      class="text-center inline-flex items-center gap-8 px-6 py-3 rounded cursor-pointer hover:bg-gray-800  focus:ring-4 focus:outline-none focus:ring-red-700"
      href="https://discord.com/invite/mwA8uP8CMc"
    >
      <Icon icon="ic:baseline-discord" class="text-2xl" />
      Discord
    </a>
    <a
      class="text-center inline-flex items-center gap-8 px-6 py-3 rounded cursor-pointer hover:bg-gray-800  focus:ring-4 focus:outline-none focus:ring-red-700"
      href="https://docs.fdm-monster.net"
    >
      <Icon icon="fluent-mdl2:documentation" class="text-2xl" />
      Documentation
    </a>
    <a
      class="text-center inline-flex items-center gap-8 px-6 py-3 rounded cursor-pointer hover:bg-gray-800  focus:ring-4 focus:outline-none focus:ring-red-700"
      href="https://octoprint.org/"
    >
      <Icon icon="game-icons:octopus" class="text-2xl" />
      OctoPrint
    </a>
  </div>
</template>
<script setup lang="ts">
import { Icon } from '@iconify/vue';
</script>
