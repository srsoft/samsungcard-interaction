<template>
  <span class="number-t3">
    {{ date }}
  </span>
</template>

<script>
export default {
  name: 'SCDateAmount',
  props: {
    /**
     * 날짜
     */
    date: {
      type: String,
      description: '날짜 표기문구',
    },
  },
  computed: {},
  mounted() {},
  methods: {},
};
</script>

<style lang="scss" scoped></style>
