<template>
  <span class="card-type" :class="cardStyleType">
    <template v-if="cardStyleType == 'type_2'">
      <span class="card-txt">
        <span class="card-tit"> {{ title }} </span>
        <span v-if="detail" class="card-detail" v-html="detail"></span>
      </span>
      <span class="card-img" :style="!cardImg ? 'background-color: gray' : ''">
        <img v-if="cardImg" :src="cardImg" :alt="imgAlt" />
      </span>
    </template>
    <template v-else>
      <span class="card-img" :style="!cardImg ? 'background-color: gray' : ''">
        <img v-if="cardImg" :src="cardImg" :alt="imgAlt" />
      </span>
      <span class="card-txt">
        <span class="card-tit">
          {{ title }}
        </span>
        <span v-if="detail" class="card-detail">
          {{ detail }}
          <span v-if="info" class="d-info">
            {{ info }}
          </span>
        </span>
      </span>
    </template>
  </span>
</template>

<script>
export default {
  name: 'SCCardType',
  components: {},
  props: {
    /**
     * SCCardType 컴포넌트 class를 변환 String으로 class 전달
     * TODO - 타입이 몇개인지 확인
     */
    cardStyleType: {
      type: String,
      description: 'SCCardType 컴포넌트 class 를 변환',
    },

    /**
     * Card 이미지 src
     */
    cardImg: {
      type: String,
      description: 'Card 이미지 src',
    },

    /**
     * Card 이미지 대체 택스트
     */
    imgAlt: {
      type: String,
      description: 'Card 이미지 대체 택스트',
    },

    /**
     * 카드 이름
     */
    title: {
      type: String,
      description: '카드 이름',
    },

    /**
     * 카드설명
     */
    detail: {
      type: String,
      description: '카드 설명',
    },

    /**
     * 카드 추가 설명 - 카드설명(detail)이 있어야 표기 가능
     */
    info: {
      type: String,
      description: '카드 추가 설명',
    },
  },
  computed: {},
  methods: {},
};
</script>
