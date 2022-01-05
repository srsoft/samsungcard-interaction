<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">다이나믹 버블</nuxt-link></h1>
      <div>설명 : 두줄 고정 처리</div>
      <div> baseTabWidth(스크롤의 길이) : {{ baseTabWidth }}</div>
      <div> clientWidth(화면넓이) : {{ tabWidth }}</div>
      <div> scrollX : {{ scrollX }}</div>
      <div> currentI : {{ currentI }}</div>
      <div> currentJ : {{ currentJ }}</div>
      <br /><br />
      <div ref="dynamicBubble" v-sticky class="dynamicBubble">
        <div class="dynamicBorder">
          <button v-if="unfoldBtn" class="extendBtn" @click="unfold = !unfold">open {{ dynamicDataChunkRowCount }} / {{ unfold }}</button>
          <div ref="tabScroll" :class="[{ scroll: true }, { isUnfold: unfold }]">
            <ul v-for="(menus, i) in dynamicDataChunk" :key="i" ref="tabs" :tab="`tab${i}`" :style="`transform: translateX(${scrollX * percents[i]}px)`">
              <li v-for="(menu, j) in menus" :key="j" :class="activeChunk(i, j)" @click="tabClickChunk(i, j)">{{ menu.label }}</li>
            </ul>
          </div>
          <div class="wcms-area" v-html="wcmsContent"></div>
          <br />
          {{ dynamicDataChunkRowCount }}
          <br />
          <br />
        </div>
      </div>
      <div v-for="i in 100" :key="i">
        {{ i }}
      </div>
    </LayoutSection>

    <!-- // Footer -->
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';

export default {
  name: 'Detail',
  components: {
    LayoutContainer,
    LayoutSection,
  },
  data() {
    return {
      tabWidth: 0,
      scrollX: 0,
      baseTabWidth: 0,
      dynamicData: [
        { label: '알타이르23 ', content: '<div>wcms 영역2</div>' },
        { label: '카노푸스2', content: '<div>wcms 영역3</div>' },
        { label: '아크룩스233', content: '<div>wcms 영역4</div>' },
        { label: '리길켄트434', content: '<div>wcms 영역5</div>' },
        { label: '알데바란', content: '<div>wcms 영역6</div>' },
        { label: '아르크투스', content: '<div>wcms 영역7</div>' },
        { label: '스피카', content: '<div>wcms 영역8</div>' },
        { label: '카노푸스', content: '<div>wcms 영역9</div>' },
        // { label: '아크룩스', content: '<div>wcms 영역10</div>' },
        // { label: '아르크투스', content: '<div>wcms 영역11</div>' },
        // { label: '스피카', content: '<div>wcms 영역12</div>' },
        // { label: '카노푸스', content: '<div>wcms 영역13</div>' },
        // { label: '아크룩스', content: '<div>wcms 영역14</div>' },
        // { label: '알타이르', content: '<div>wcms 영역15</div>' },
        // { label: '카노푸스', content: '<div>wcms 영역16</div>' },
        // { label: '아크룩스', content: '<div>wcms 영역17</div>' },
        // { label: '리길켄트', content: '<div>wcms 영역18</div>' },
        // { label: '알데바란', content: '<div>wcms 영역19</div>' },
      ],
      dynamicDataChunk: [],
      dynamicDataChunkRowCount: 2,
      unfold: false,
      unfoldBtn: false,
      tabs: [],
      percents: [],
      wcmsContent: '',
      currentI: 0,
      currentJ: 0,
    };
  },
  computed: {
    activeChunk() {
      return function (i, j) {
        return this.currentI === i && this.currentJ === j ? 'is_active' : false;
      };
    },
  },
  watch: {
    dynamicDataChunkRowCount(v) {
      this.dynamicDataChunk = this.chunk(this.dynamicData);
    },
    unfold(v) {
      if (v === true) {
        this.dynamicDataChunkRowCount = 1;
        this.dynamicDataChunk = this.chunk(this.dynamicData);
      } else {
        console.log('this.$refs.dynamicBubble.style.top:', this.$refs.dynamicBubble.style.top);
        // if (this.$refs.dynamicBubble.style.top === 'auto') {
        //   this.dynamicDataChunkRowCount = 2;
        // }
        this.dynamicDataChunkRowCount = 2;
      }
    },
  },
  created() {
    this.dynamicDataChunk = this.chunk(this.dynamicData);
  },
  mounted() {
    window.addEventListener('scroll', this.onScroll);
    this.$refs.tabScroll.addEventListener('scroll', this.onScrollBubble);

    for (let i = 0; i < this.$refs.tabs.length; i++) {
      this.tabs[i] = this.$refs.tabs[i].clientWidth;
    }

    this.tabWidth = this.$refs.tabScroll.clientWidth;
    if (this.tabWidth < 768) {
      console.log('모바일');
      this.unfoldBtn = true;
    } else {
      console.log('웹');
      this.unfoldBtn = false;
      this.unfold = true;
    }

    this.baseTabWidth = Math.max.apply(null, this.tabs);

    for (let i = 0; i < this.$refs.tabs.length; i++) {
      if (this.tabWidth < this.tabs[i]) {
        console.log('this.tabs[i]:', this.tabs[i], '스크롤');
        this.percents[i] = 1 - (this.tabs[i] - this.tabWidth) / (this.baseTabWidth - this.tabWidth);
      } else {
        console.log('this.tabs[i]:', this.tabs[i], '정지');
        this.percents[i] = 1;
      }
    }
  },
  beforeDestroy() {
    window.removeEventListener('scroll', this.onScroll);
    this.$refs.tabScroll.removeEventListener('scroll', this.onScrollBubble);
  },
  methods: {
    onScroll() {
      console.log('this.$refs.dynamicBubble.style.top:', this.$refs.dynamicBubble.style.top);
      if (this.$refs.dynamicBubble.style.top === '0px' || this.unfold) {
        // this.dynamicDataChunkRowCount = 1;
      } else {
        // this.dynamicDataChunkRowCount = 2;
      }
    },
    onScrollBubble(e) {
      this.scrollX = e.target.scrollLeft;
    },
    tabClickChunk(i, j) {
      this.wcmsContent = this.dynamicDataChunk[i][j].content;
      this.currentI = i;
      this.currentJ = j;
    },
    chunk(arr) {
      const chunk = Math.ceil(arr.length / this.dynamicDataChunkRowCount);
      const temparray = [];
      for (let i = 0; i < arr.length; i += chunk) {
        temparray.push(arr.slice(i, i + chunk));
      }
      return temparray;
    },
  },
};
</script>
<style lang="scss" scoped>
.dynamicBubble {
  position: relative;
  .dynamicBorder {
    position: relative;
    .extendBtn {
      position: absolute;
      top: 0px;
      right: 0px;
      background: #666;
      z-index: 100;
    }
    .scroll {
      width: 100%;
      overflow-x: auto;
      background: #ccc;
      &.isUnfold {
        ul {
          display: block;
          li {
            margin-bottom: 10px;
          }
        }
      }
      ul {
        display: inline-flex;
        margin-bottom: 20px;
        background: #ddd;
        li {
          display: inline-block;
          border: 1px solid #333;
          border-radius: 999px;
          padding: 5px 8px;
          margin-right: 10px;
          white-space: nowrap;
          &.is_active {
            background-color: #f9f9f9;
          }
        }
      }
    }
  }
}
</style>
