<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">숫자 애니메이션</nuxt-link></h1>
      <div>설명 : 숫자 애니메이션</div>
      <div>화면ID : PGHPPCCMainFinanceView001</div>
      <div>npm install animated-number-vue</div>
    </LayoutSection>
    <LayoutSection>
      <div> [<AnimatedNumber v-if="period == 1" :value="7000" :duration="duration" :format-value="formatToPrice" style="font-size: 1.8em">234234</AnimatedNumber>] </div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
import AnimatedNumber from 'animated-number-vue';

export default {
  components: {
    AnimatedNumber,
  },
  data() {
    return {
      duration: 600,
    };
  },
  methods: {
    formatToPrice(value) {
      const num = Number(value).toFixed(0);
      return `${Number(num).toLocaleString()}`;
    },
  },
};
</script>

<style lang="scss" scoped></style>
