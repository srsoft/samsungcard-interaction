<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">Tabmenu2</nuxt-link></h1>
      <div>설명 : 컨텐츠를 한페이지에 몰아 넣고 스크롤 위치에 따라 탭 버튼 선택 변함</div>
      <div>npm install --save vue-scrollactive</div>
    </LayoutSection>
    <LayoutSection>
      <div>
        <scrollactive
          v-sticky
          active-class="active"
          :offset="80"
          :duration="400"
          bezier-easing-value=".5,0,.35,1"
          :modify-url="false"
          :highlight-first-item="true"
          :always-track="false"
          :scroll-on-start="true"
          @itemchanged="onItemChanged"
        >
          <a v-for="(tab, index) in tabs" :key="index" :href="`#tab${index}`" class="scrollactive-item">{{ tab.title }}</a>
        </scrollactive>
        <div class="scroll-content">
          <div v-for="(tab, index) in tabs" :id="`tab${index}`" :key="index">
            <h2>{{ tab.title }}</h2>
            <div>
              <div v-for="(item, j) in tab.items" :key="j">
                <p>{{ item.title }}</p>
                <p>{{ item.subTitle }}</p>
              </div>
            </div>
            <p v-for="k in 30" :key="k">{{ k }}</p>
          </div>
        </div>
      </div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';
import Vue from 'vue';
import VueScrollactive from 'vue-scrollactive';
Vue.use(VueScrollactive);

export default {
  name: 'Tabmenu2',
  components: {
    LayoutContainer,
    LayoutSection,
  },
  beforeDestory() {},
  data() {
    return {
      tabs: [
        {
          title: '인기',
          items: [
            {
              title: '맞춤형 100세 든든 슈퍼 암보험',
              subTitle: '보험가입 질문 간소화',
            },
            {
              title: '실손의료비보험',
              subTitle: '늘어나는 병원비 부담 대비!',
            },
            {
              title: '온라인 치아보험',
              subTitle: '비흡연자 최대 35% 할인!',
            },
          ],
          banner: {
            imgSrc: '@temp/temp_bg03@2x.png',
            alt: '배너 내용',
          },
        },
        {
          title: '자동차',
          items: [
            {
              title: '자동차보험',
              subTitle: '신세계 상품권 선물!',
            },
            {
              title: '운전자보험',
              subTitle: '6주미만 형사합의금 업계최초 보장!',
            },
          ],
          banner: {
            imgSrc: '@temp/temp_bg03@2x.png',
            alt: '배너 내용',
          },
        },
        {
          title: '건강',
          items: [
            {
              title: '뇌/심장질환보험',
              subTitle: '뇌경색증, 뇌출혈 걱정 NO!',
            },
            {
              title: '맞춤형 100세 든든 슈퍼 암보험',
              subTitle: '보험가입 질문 간소화',
            },
          ],
          banner: {
            imgSrc: '@temp/temp_bg03@2x.png',
            alt: '배너 내용',
          },
        },
        {
          title: '일상·여행',
          items: [
            {
              title: '주택화재보험',
              subTitle: '우리집 화재, 아랫집 누수까지 보장!',
            },
            {
              title: '해외여행보험',
              subTitle: '든든한 보장으로 안심여행!',
            },
          ],
          banner: {
            imgSrc: '@temp/temp_bg03@2x.png',
            alt: '배너 내용',
          },
        },
      ],
      tabCount: 50,
    };
  },
  methods: {
    onItemChanged(event, currentItem, lastActiveItem) {
      console.log(event, currentItem, lastActiveItem);
    },
  },
};
</script>

<style lang="scss" scoped>
.scrollactive-nav {
  width: 100%;
  height: 80px;
  background-color: #fff;
  border-bottom: 1px solid #333;
  overflow: scroll;
  white-space: nowrap;
  a {
    display: inline-flex;
    padding: 20px;
    &.active {
      color: blue;
    }
  }
}
.scroll-content {
  > div:nth-child(odd) {
    background: #f9f9f9;
  }
}
</style>
