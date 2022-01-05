<template>
  <div>
    <h1>인풋박스 / 텍스트 필드90</h1>
    <div class="form_ipt_2">
      <input type="text" placeholder="인풋박스" class="ipt" />
    </div>
  </div>
</template>

<script>
export default {
  components: {},
  data() {
    return {};
  },
};
</script>

<style lang="scss" scoped>
.form_ipt_2 {
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  border-bottom: 2px solid #dcdcdc;
  width: 100%;
  color: #111;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  &:focus-within::after {
    content: '';
    display: block;
    background: #111;
    position: absolute;
    bottom: -2px;
    left: 0;
    height: 2px;
    -webkit-animation: input-line2 0.5s forwards ease-in-out;
    animation: input-line2 0.5s forwards ease-in-out;
    border: 1px solid red;
  }
}

.form_ipt_2 .ipt {
  -webkit-box-flex: 1;
  -ms-flex: 1;
  flex: 1;
  border: 0 none;
  width: 100%;
  height: 54px;
  padding: 14px 0;
  font-size: 1.25rem;
  font-weight: bold;
  color: inherit;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  outline: 0 none;
}
</style>
