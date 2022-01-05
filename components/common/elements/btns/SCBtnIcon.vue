<template>
  <button type="button" class="btn_icon" :aria-label="label" @click="onClick">
    <i class="ico" :class="className"></i>
  </button>
</template>

<script>
export default {
  name: 'SCBtnIcon',

  props: {
    /**
     * 클래스 확인 및 / 웹접근성 라벨 aria-label
     */
    label: {
      type: String,
      validator: (value) => {
        return ['이전', '다음', '더보기', '날짜선택', '검색', '이동', '필터', '새로고침', '닫기'].includes(value);
      },
      description: '클래스 확인 및 / 웹접근성 라벨 aria-label',
    },
    // TODO-사용하지않음
    event: {
      type: String,
      description: '사용하지않음',
    },
  },
  computed: {
    className() {
      const cases = {
        이전: 'common-chevron-left',
        다음: 'common-chevron-right',
        더보기: 'common-expand-more-s',
        날짜선택: 'line-calender',
        검색: 'line-search',
        이동: 'common-chevron-right',
        필터: 'line-filter',
        새로고침: 'common-refresh',
        닫기: 'common-close',
      };
      return cases[this.label];
    },
  },
  mounted() {},
  methods: {
    onClick() {
      this.$emit('onClick');
    },
  },
};
</script>
