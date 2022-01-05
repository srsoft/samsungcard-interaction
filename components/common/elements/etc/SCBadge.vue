<template>
  <span class="badge" :class="`${styleType}`">
    {{ title }}
  </span>
</template>

<script>
export default {
  name: 'SCBadge',
  props: {
    /**
     * title
     */
    title: {
      type: String,
      description: 'SCBadge 의 title 속성',
    },

    /**
     * class 변경 타입
     */
    styleType: {
      type: String,
      default: 'primary',
      validator: (value) => {
        return ['primary', 'secondary', 'danger', 'info'].includes(value);
      },
      description: 'SCBadge 의 styleType 속성',
    },
  },
  data() {
    return {};
  },

  methods: {},
};
</script>
