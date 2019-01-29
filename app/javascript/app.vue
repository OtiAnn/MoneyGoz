<template>
  <div id="app">
    <div v-for="payment in original_payments" class="row">
      <div class="col-3">{{ payment.payment_date}}</div>
      <div class="col-3">
        <ul v-for="item in payment.items">
          <li>
            <span>{{ item.name }}</span>
            <span>{{ item.price }}</span>
          </li>
        </ul>
      </div>
      <div class="col-3">{{ payment.tax}}</div>
      <div class="col-3">{{ payment.tip}}</div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["original_payments"]
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
