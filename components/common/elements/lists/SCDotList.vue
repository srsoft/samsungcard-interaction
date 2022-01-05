<template>
  <ul class="dot-list">
    <li v-for="(item, i) in textArr" :key="i">
      <slot>{{ item.text }}</slot>
    </li>
  </ul>
</template>

<script>
export default {
  name: 'SCDotList',
  components: {},
  props: {
    textArr: {
      type: Array,
    },
  },
  data() {
    return {};
  },
  computed: {},
};
</script>
