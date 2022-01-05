<template>
  <div :class="`progressState step${state}`">
    <span></span>
    <span></span>
    <span></span>
  </div>
</template>

<script>
export default {
  props: {
    state: {
      type: String,
      default: '0',
    },
  },
  data() {
    return {
      stateClass: true,
    };
  },
};
</script>
<style lang="scss" scoped>
.progressState {
  display: flex;
  width: 30px;
  height: 15px;
  background-color: #ddd;
  margin-right: 10px;
  span {
    width: 10px;
    height: 15px;
    background-color: #2090ff;
    display: none;
  }
  &.step1 {
    span:nth-child(1) {
      display: block;
    }
  }
  &.step2 {
    span:nth-child(1) {
      display: block;
    }
    span:nth-child(2) {
      display: block;
    }
  }
  &.step3 {
    span:nth-child(1) {
      display: block;
    }
    span:nth-child(2) {
      display: block;
    }
    span:nth-child(3) {
      display: block;
    }
  }
}
</style>
