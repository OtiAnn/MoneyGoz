<template>
  <div id="app" class="p-5">
    <table class="table table-bordered table-hover">
      <thead class="thead-dark">
        <tr>
          <th scope="col">Date</th>
          <th scope="col">Items ( Type / Name / Price )</th>
          <th scope="col">Tax</th>
          <th scope="col">Tip</th>
          <th scope="col">Paid By</th>
          <th scope="col">Total Amount</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="payment in original_payments">
          <th scope="row">{{ getFormatedDate(payment.payment_date) }}</th>
          <td>
            <div class="container">
              <div v-for="item in payment.items" :key="item.id" class="row">
                <div class="col-sm-2">{{ item.item_type.name }}</div>
                <div class="col-sm-6">{{ item.name }}</div>
                <div class="col-sm-4">CDN$ {{ item.price }}</div>
              </div>
            </div>
          </td>
          <td>CDN$ {{ payment.tax }}</td>
          <td>CDN$ {{ payment.tip }}</td>
          <td>{{ payment.payment_type.name }}</td>
          <td>CDN$ {{ getTotalAmount(payment) }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  props: ["original_payments"],
  methods: {
    getFormatedDate: function (date) {
      if (date.length > 0) {
        var d = new Date(date);
        return d.toLocaleDateString('en-CA');
      }
    },
    getTotalAmount: function (payment) {
      var item_length = payment.items.length;
      if (item_length > 0) {
        var sum_of_items_amount = 0.00;
        payment.items.map( function (item) {
          sum_of_items_amount += parseFloat(item.price);
        })

        return (sum_of_items_amount + parseFloat(payment.tip) + parseFloat(payment.tax)).toFixed(2);
      }
      return 'N/A'
    }
  }
}
</script>

<style scoped>
</style>
