---
layout: page
title: Consider making a donation!
---

<div class="container">
  <div class="donation-button">
    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">
      <input type="hidden" name="cmd" value="_donations">
      <input type="hidden" name="business" value="{{ site.data.authors.primary.email }}">
      <input type="hidden" name="lc" value="US">
      <input type="hidden" name="item_name" value="{{ site.data.settings.title }}">
      <input type="hidden" name="item_number" value="{{ site.data.settings.donate-paypal }}">
      <input type="hidden" name="no_note" value="0">
      <input type="hidden" name="currency_code" value="MXN">
      <input type="hidden" name="bn" value="PP-DonationsBF:btn_donate_LG.gif:NonHostedGuest">
      <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
      <img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
    </form>
  </div>
  <div class="donation-button">
    <a href="https://blockchain.info/payment_request?address={{ site.data.settings.donate-blockchain }}" target="_blank">
      <img src="https://blockchain.info/Resources/buttons/donate_64.png"/>
    </a>
  </div>
</div>
