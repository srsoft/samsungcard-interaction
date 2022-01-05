<template>
  <!-- <div class="btn_group_combi" :class="{ 'mg-3': addClass }"> -->
  <div class="btn_group_combi" :class="addClass">
    <SCBtn :is-button-tag="isButtonTag" :style-type="styleType" :type="type" :disabled="disabled" @onClick="onClick">
      <span class="inner-text">
        <span v-if="title" class="tit">{{ title }}</span>
        <span v-if="subTitle" class="txt">{{ subTitle }}</span>
      </span>
      <SCIcon v-if="isArrow" :name="'chevron-right'" />
      <span v-else-if="label" :class="`btn_${subStyleType}`">{{ label }}</span>
    </SCBtn>
  </div>
</template>

<script>
import SCIcon from '@/components/common/elements/etc/SCIcon';
import SCBtn from './SCBtn';

export default {
  name: 'SCCombiBtn',
  components: { SCBtn, SCIcon },

  props: {
    /**
     * SCCombiBtn class 추가 props
     * TODO-사용법 문의
     */
    addClass: {
      type: [String, Object],
      default: '',
      description: 'SCCombiBtn class 추가 props',
    },

    /**
     * SCBtn 버튼 disabled 유무
     */
    disabled: {
      type: Boolean,
      description: 'SCBtn 버튼 disabled 유무',
    },

    /**
     * SCBtn 버튼 type
     */
    type: {
      type: String,
      default: 'button',
      validator: (value) => {
        return ['button', 'submit'].includes(value);
      },
      description: 'SCBtn 버튼 type',
    },

    /**
     * SCBtn 버튼 스타일 add
     */
    styleType: {
      type: String,
      default: 'base',
      validator: (value) => {
        return ['base', 'util'].includes(value);
      },
      description: 'SCBtn 버튼 스타일 add',
    },

    /**
     * 버튼 태그 여부 (true시 button/ false시 a)
     */
    isButtonTag: {
      type: Boolean,
      default: true, // 추가하였음 기대값이랑 다름
      description: '버튼 태그 여부 (true시 button/ false시 a)',
    },

    /**
     * subStyleType label style
     */
    subStyleType: {
      type: String,
      description: 'subStyleType label style',
      validator: (value) => {
        return ['util', 'util_primary'].includes(value);
      },
    },

    /**
     * label
     */
    label: {
      type: String,
      description: '라벨',
    },

    /**
     * title
     */
    title: {
      type: String,
      description: 'title',
    },

    /**
     * subTitle
     */
    subTitle: {
      type: String,
      description: 'subTitle',
    },

    /**
     * Button 에 Arrow 표기
     */
    isArrow: {
      type: Boolean,
      default: false,
      description: 'Button 에 Arrow 표기',
    },
  },
  computed: {},
  mounted() {},
  methods: {
    onClick() {
      this.$emit('onClick');
    },
  },
};
</script>
