<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">test3</nuxt-link></h1>
      <div>설명 : </div>
    </LayoutSection>
    <LayoutSection>
      <div></div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';

export default {
  name: 'Test3',
  components: {
    LayoutContainer,
    LayoutSection,
  },
  beforeDestory() {},
  data() {
    return {};
  },
};
</script>

<style lang="scss" scoped></style>
