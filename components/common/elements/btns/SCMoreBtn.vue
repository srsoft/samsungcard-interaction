<template>
  <div class="btn_group_round">
    <SCBtn :style-type="'base'" :class="`type_more`" :is-arrow="true" :disabled="disabled" @onClick="onClick">
      <span class="more_txt">{{ label }}</span>
      <span class="more_num">
        <em class="is_on">{{ currentNum }}</em>
        <em>{{ totalNum }}</em>
      </span>
    </SCBtn>
  </div>
</template>

<script>
import SCBtn from './SCBtn';

export default {
  name: 'SCMoreBtn',
  components: { SCBtn },
  props: {
    /**
     * 버튼 라벨
     */
    label: {
      type: String,
    },

    /**
     * 총 갯수
     */
    totalNum: {
      type: Number,
      default: 0,
      description: '현재 갯수',
    },

    /**
     * SCBtn 내려주는 disabled 속성
     */
    disabled: {
      type: Boolean,
      default: false,
      description: 'SCBtn 내려주는 disabled 속성',
    },

    /**
     * 현재 갯수
     */
    currentNum: {
      type: Number,
      default: 0,
      description: '현재 갯수',
    },
  },

  methods: {
    onClick() {
      this.$emit('onClick');
    },
  },
};
</script>
