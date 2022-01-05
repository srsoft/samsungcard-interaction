<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">Skeleton</nuxt-link></h1>
      <div>설명 : 스켈랙톤</div>
      <div>npm i vue-loading-skeleton</div>
    </LayoutSection>
    <LayoutSection>
      <div class="item">
        <div class="item__photo">
          <PuSKeleton circle height="50px" v-bind="$attrs">
            {{ itemData.img }}
          </PuSKeleton>
        </div>
        <div class="item__meta">
          <div class="item__title"
            ><PuSKeleton v-bind="$attrs">{{ itemData.title }}</PuSKeleton></div
          >
          <div class="item__info"
            ><PuSKeleton :count="2" v-bind="$attrs">{{ itemData.body }}</PuSKeleton></div
          >
        </div>
      </div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';
import PuSKeleton from 'vue-loading-skeleton';

export default {
  name: 'Test4',
  components: {
    LayoutContainer,
    LayoutSection,
    PuSKeleton,
  },
  beforeDestory() {},
  data() {
    return {
      temData: {},
    };
  },
  mounted() {
    setTimeout(() => {
      this.itemData = {
        img: './image.png',
        title: 'Item Title',
        body: 'Make beautiful, animated loading skeletons that automatically adapt to your app.',
      };
    }, 1500);
  },
};
</script>

<style lang="scss" scoped></style>
