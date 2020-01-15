<style>
.tab {
  display: inline-block;
  margin-left: 30px;
}

p {
  margin-bottom: 20px;
}
</style>

<template>
  <v-container fill-height fluid grid-list-xl>
    <v-layout justify-center wrap>
      <v-flex xs12 md8>
        <material-card color="green" title="Profile">
          <v-form>
            <v-container py-0>
              <v-layout wrap>
                <p style="margin-top: 20px;">
                  <span class="tab" />程式一直都是我非常喜愛的一門學問，它能夠讓我以聰明的方法去解決一件事，能夠化繁為簡，能夠讓這世界產生更多的變化。我也認為程式語言是種工具，雖然我較精於java、php，使用過spring boot、codeIgniter、Laravel框架，卻也依然對python、C等語言感到興趣，偶爾私底下也會碰碰。
                </p>
                <p>
                  <span class="tab" />曾擔任大一Java課程教學助理一年，以及高中扎根計畫C選修課程教學助理，想擔任該職務是想說，除了能夠與學弟妹打好關係、幫助他們更快的融入大學生活外，也能夠讓自己程式語言的基礎能力更進一步的提升。
                </p>
                <p>
                  <span class="tab" />工作的第一年，接手了較大型的專案才發現，程式架構、命名規則的重要性，在這專案中留下了許多前人的「糙code」，幾次想重構，卻又因為最一開始沒有寫單元測試的習慣，而且有些變數名稱從DB就開始混亂了，而苦於修改，不過這經驗也讓我開始注重自己程式碼的品質，偶爾會看關於重構、設計模式、無暇程式碼等書，期望自己的程式碼將來不會造成他人的困擾。
                </p>
                <p>
                  <span class="tab" />未來的規畫有點想試試看SD(系統設計師)的職位，不過目前並未接觸到SD專業的前輩，有機會的話希望能夠嘗試看看，在此之前會先繼續精進自己的程式設計能力。
                </p>
              </v-layout>
            </v-container>
          </v-form>
        </material-card>
      </v-flex>
      <v-flex xs12 md4>
        <material-card class="v-card-profile">
          <v-avatar slot="offset" class="mx-auto d-block" size="130">
            <img src="../images/profile.jpeg" />
          </v-avatar>
          <v-card-text class="text-xs-center">
            <h6 class="category text-gray font-weight-thin mb-3">小小開發工程師</h6>
            <h4 class="card-title font-weight-light">林峻毅 (Tino)</h4>
            <p class="card-description font-weight-light">
              我的興趣就是解決問題，無論是困難的、奇怪的、複雜的都過來給我試試看吧！大不了我也不會而已~
              <br />⁽⁽٩(๑˃̶͈̀ ᗨ ˂̶͈́)۶⁾⁾
            </p>
            <v-btn color="success" round class="font-weight-light">Follow</v-btn>
          </v-card-text>
        </material-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  //
};
</script>
