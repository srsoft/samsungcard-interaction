<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">카드뒷면</nuxt-link></h1>
      <div>설명 : 카드 뒤집기</div>
      <div>화면ID : PGHPPCPCardApplyNewSelectDesign001</div>
    </LayoutSection>
    <LayoutSection>
      <div class="container">
        <div class="flipItem">
          <div class="image" :class="{ on: flip }">
            <div class="item front">
              <img src="~/assets/images/card/img-card-2v4-l.png" alt="img front" />
            </div>
            <div class="item back">
              <img src="~/assets/images/card/img-card-6v4-l.png" alt="img back" />
            </div>
          </div>
          <button @click="flip = !flip"> 뒤집기 {{ flip }} </button>
        </div>
      </div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
export default {
  data() {
    return {
      flip: false,
    };
  },
};
</script>

<style lang="scss" scoped>
.container {
  padding: 100px;
}
.flipItem {
  display: inline-flex;
  flex-direction: column;
  justify-items: center;
  .image {
    width: 120px;
    height: 190px;
    perspective: 500px;
    .item {
      position: absolute;
      width: 120px;
      height: 190px;
      font-size: 35px;
      backface-visibility: hidden;
      transition: 0.7s;
      &.front {
        transform: rotateY(0deg);
      }
      &.back {
        transform: rotateY(-180deg);
      }
    }
    &.on {
      .item {
        &.front {
          transform: rotateY(180deg);
        }
        &.back {
          transform: rotateY(0deg);
        }
      }
    }
  }
  button {
    margin: 10px;
  }
}
</style>
