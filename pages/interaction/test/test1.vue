<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">test1</nuxt-link></h1>
      <div>설명 : 배열을 나눈다</div>
      <div></div>
      <p></p>
    </LayoutSection>
    <LayoutSection>
      <div>{{ dynamicDataChunk }}</div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';

export default {
  name: 'Test1',
  components: {
    LayoutContainer,
    LayoutSection,
  },
  data() {
    return {
      dynamicData: [
        { label: '알타이르23', content: '<div>wcms 영역2</div>' },
        { label: '카노푸스2', content: '<div>wcms 영역3</div>' },
        { label: '아크룩스233', content: '<div>wcms 영역4</div>' },
        { label: '리길켄트434', content: '<div>wcms 영역5</div>' },
        { label: '알데바란', content: '<div>wcms 영역6</div>' },
        { label: '아르크투스', content: '<div>wcms 영역7</div>' },
        { label: '스피카', content: '<div>wcms 영역8</div>' },
        { label: '카노푸스', content: '<div>wcms 영역9</div>' },
        { label: '아크룩스', content: '<div>wcms 영역10</div>' },
        { label: '아르크투스', content: '<div>wcms 영역11</div>' },
        { label: '스피카', content: '<div>wcms 영역12</div>' },
        { label: '카노푸스', content: '<div>wcms 영역13</div>' },
        { label: '아크룩스', content: '<div>wcms 영역14</div>' },
        { label: '알타이르', content: '<div>wcms 영역15</div>' },
        { label: '카노푸스', content: '<div>wcms 영역16</div>' },
        { label: '아크룩스', content: '<div>wcms 영역17</div>' },
        { label: '리길켄트', content: '<div>wcms 영역18</div>' },
        { label: '알데바란', content: '<div>wcms 영역19</div>' },
      ],
      dynamicDataChunk: [],
    };
  },
  mounted() {
    this.dynamicDataChunk = this.chunk(this.dynamicData);
  },
  methods: {
    chunk(arr) {
      const chunk = arr.length / 2;
      console.log(chunk);
      const temparray = [];
      for (let i = 0; i < arr.length; i += chunk) {
        temparray.push(arr.slice(i, i + chunk));
      }
      return temparray;
    },
  },
};
</script>

<style lang="scss" scoped></style>
