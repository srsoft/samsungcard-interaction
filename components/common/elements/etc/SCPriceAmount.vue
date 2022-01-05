<template>
  <span class="price-amount" :class="fontSize">
    <em class="price">{{ price }}</em>
    {{ unit }}
  </span>
</template>

<script>
export default {
  name: 'SCPriceAmount',
  props: {
    /**
     * 금액
     */
    price: {
      type: String,
    },

    /**
     * 폰트 크기 클래스 (large || null)
     */
    fontSize: {
      type: String,
      default: '',
    },

    /**
     * 단위
     */
    unit: {
      type: String,
    },
  },
  computed: {},
  mounted() {},
  methods: {},
};
</script>
