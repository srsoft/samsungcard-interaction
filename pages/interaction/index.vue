<template>
  <LayoutContainer>
    <LayoutSection>
      <h1>Interaction</h1>
      <ul class="menus">
        <li v-for="menu in menus" :key="menu" v-sticky="menu.depth === '1' ? true : false" :class="menu.depth === '1' ? 'depth1' : 'depth2'">
          <nuxt-link :to="{ name: menu.router }">
            <ProgressState v-if="menu.depth > 1" :state="menu.state" />
            {{ menu.label }}
          </nuxt-link>
        </li>
      </ul>
      <div> footer </div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
import ProgressState from '@/components/interaction/ProgressState';
export default {
  name: 'Sticky',
  components: { ProgressState },
  beforeDestory() {},
  data() {
    return {
      menus: [
        { depth: '1', label: '01. Common', state: '0', router: '' },
        { depth: '2', label: '메인화면', state: '1', router: 'interaction-common-INTERmain' },
        { depth: '2', label: '페이지 간 이동', state: '2', router: 'interaction-common-MovePage' },
        { depth: '2', label: '바텀모달', state: '3', router: 'interaction-common-BottomModal' },
        { depth: '2', label: '인풋박스 / 텍스트 필드', state: '0', router: 'interaction-common-InputBox' },
        { depth: '2', label: '서비스 가이드 팝업(말풍선)', state: '1', router: 'interaction-common-SpeechBubble' },
        { depth: '2', label: '프로그래스바', state: '0', router: 'interaction-common-ProgressBar' },
        { depth: '2', label: '챗봇', state: '2', router: 'interaction-common-ChatBot' },
        { depth: '2', label: '탭1', state: '0', router: 'interaction-common-Tabmenu1' },
        { depth: '2', label: '탭2', state: '1', router: 'interaction-common-Tabmenu2' },
        { depth: '2', label: '스플래시', state: '1', router: 'interaction-common-Splash' },
        { depth: '2', label: '스켈레톤', state: '1', router: 'interaction-common-Skeleton' },
        { depth: '2', label: '로딩', state: '0', router: '' },
        { depth: '2', label: '인스타그램 플리키', state: '2', router: 'interaction-common-InstagramFlickity' },
        { depth: '2', label: '베너탭 > 상세화면 이동', state: '2', router: 'interaction-common-BannerTab' },
        { depth: '2', label: '하단 v-sticky', state: '3', router: 'interaction-common-BottomSticky' },
        { depth: '1', label: '02. 마이', state: '0', router: '' },
        { depth: '2', label: '상단 빅배너', state: '0', router: '' },
        { depth: '2', label: '내 카드 더보기', state: '0', router: '' },
        { depth: '1', label: '03. 혜택', state: '0', router: '' },
        { depth: '2', label: '다이나믹 버블(두줄고정)', state: '3', router: 'interaction-benefits-DynamicBubble' },
        { depth: '2', label: '다이나믹 버블(두줄/한줄 가변)', state: '3', router: 'interaction-benefits-DynamicBubble1' },
        { depth: '2', label: 'AI 추천', state: '0', router: '' },
        { depth: '2', label: '링크 버튼', state: '0', router: '' },
        { depth: '1', label: '04. 전체메뉴', state: '0', router: '' },
        { depth: '2', label: '검색 영역', state: '0', router: '' },
        { depth: '1', label: '05. 회원가입', state: '0', router: '' },
        { depth: '2', label: '휴대폰 인증', state: '0', router: '' },
        { depth: '1', label: '06. 카드안내/신청', state: '0', router: '' },
        { depth: '2', label: '카드상세화면 진입', state: '0', router: '' },
        { depth: '2', label: '카드상세화면 내 카드 롤링', state: '0', router: '' },
        { depth: '2', label: '카드 뒷면 버튼', state: '3', router: 'interaction-cardapply-FlipItem' },
        { depth: '2', label: '카드신청 완료', state: '0', router: '' },
        { depth: '1', label: '07. 프리미엄리워즈', state: '0', router: '' },
        { depth: '2', label: '프리미엄 상향 팝업', state: '1', router: 'interaction-premium-UpwardPopup' },
        { depth: '1', label: '08. 앱카드', state: '0', router: '' },
        { depth: '2', label: '앱카드 안내 (N)', state: '0', router: '' },
        { depth: '1', label: '09. 금융', state: '0', router: '' },
        { depth: '2', label: '숫자 애니메이션', state: '1', router: 'interaction-finance-NumberAnimation' },
        { depth: '1', label: '10. 테스트', state: '0', router: '' },
        { depth: '2', label: '테스트1', state: '0', router: 'interaction-test-test1' },
        { depth: '2', label: '테스트2', state: '0', router: 'interaction-test-test2' },
        { depth: '2', label: '테스트3', state: '0', router: 'interaction-test-test3' },
        { depth: '2', label: '테스트4', state: '0', router: 'interaction-test-test4' },
        { depth: '2', label: '테스트5', state: '0', router: 'interaction-test-test5' },
      ],
    };
  },
};
</script>

<style lang="scss" scoped>
.menus {
  li {
    background: #f9f9f9;
    padding: 5px 0;
    margin-bottom: 20px;
    &.depth1 {
      background: #ccc !important;
    }
    &.depth2 {
      padding-left: 20px !important;
    }
    a {
      display: flex;
      align-items: center;
    }
  }
}
</style>
