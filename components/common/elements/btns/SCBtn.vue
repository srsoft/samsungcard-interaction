<template>
  <button v-if="isButtonTag" :class="className" :isCard="isCard" :type="type" :disabled="disabled" @click="onClick">
    <slot>{{ label }}</slot>
    <SCIcon v-if="styleType !== 'txt' && styleType !== 'btn_arr' && isArrow" :style-type="'common'" :name="'expand-more-m'" />
    <SCIcon v-if="styleType === 'txt'" :style-type="'common'" :name="'expand-more-m'" />
  </button>
  <a v-else ref="link" :class="[className, { is_disabled: disabled }]" role="button" @click="onClick">
    <i v-if="isPoint" class="ico ico-sm solid-point"></i>
    <slot>{{ label }}</slot>
    <SCIcon v-if="styleType !== 'txt' && styleType !== 'text-sm' && isArrow" :style-type="'common'" :name="'expand-more-m'" />
    <SCIcon v-if="styleType === 'txt'" :style-type="'common'" :name="'expand-more-m'" />
  </a>
</template>

<script>
import SCIcon from '@/components/common/elements/etc/SCIcon';

export default {
  name: 'SCBtn',
  components: { SCIcon },
  props: {
    /**
     * isButtonTag : 버튼 태그인지 확인 (true시 button/ false시 a)
     */
    isButtonTag: {
      type: Boolean,
      default: true,
      description: '버튼 태그 토글',
    },
    /**
     * 버튼 Style Type
     */
    styleType: {
      type: String,
      default: 'base',
      validator: (value) => {
        return ['base', 'primary', 'secondary', 'ghost', 'util', 'util_ghost', 'text', 'link', 'btn_arr', 'txt', 'text-sm'].includes(value);
      },
      description: 'SCBtn 버튼 스타일 add',
    },

    /**
     * Button 의 Type 속성
     */
    type: {
      type: String,
      default: 'button',
      validator: (value) => {
        return ['submit', 'button'].includes(value);
      },
      description: 'Button 의 Type 속성 지정',
    },
    /**
     * Button 의 label
     */
    label: {
      type: String,
      description: 'Button 의 label',
    },

    /**
     * SCBtn 의 disabled 속성
     */
    disabled: {
      type: Boolean,
      default: false,
      description: 'SCBtn 의 disabled 속성',
    },
    /**
     * 화살표 형태의 타입 여부
     */
    isArrow: {
      type: Boolean,
      default: false,
      description: '화살표 형태의 타입',
    },

    /**
     * card class 적용여부
     */
    isCard: {
      type: Boolean,
      default: false,
      description: 'card class 적용여부',
    },
    /**
     * icon 표출 여부
     */
    isPoint: {
      type: Boolean,
      default: false,
      description: 'icon 표출 여부',
    },
  },
  computed: {
    className() {
      const cases = {
        base: 'btn_base',
        primary: 'btn_base_primary',
        secondary: 'btn_base_secondary',
        ghost: 'btn_base_ghost',
        util: 'btn_util',
        util_ghost: 'btn_util_ghost',
        text: 'btn_txt',
        link: 'btn_link',
      };
      return [cases[this.styleType], { type_card: this.isCard }];
    },
  },
  mounted() {
    // this.onDisabled();
  },
  methods: {
    onClick() {
      if (!this.disabled) {
        this.$emit('onClick');
      }
    },

    // TODO-사용하지않음
    // onDisabled() {
    //   if (!this.isButtonTag) {
    //     const el = this.$refs.link;
    //     el.setAttribute('tabindex', '-1');
    //     el.setAttribute('aria-disabled', 'true');
    //   }
    // },
  },
};
</script>
