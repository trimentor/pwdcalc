/*!
 * jquery.pwdcalc.js
 *
 * Copyright 2011, Kjel Delaey (https://github.com/trimentor/pwdcalc)
 * https://github.com/trimentor/pwdcalc/blob/master/LICENSE
 */
$(document).ready(function () {
    $("li.pwdcalc").each(function () {
        var pwdcalc, passwordStrengthMeter, passwordField, passwordScore;

        pwdcalc = $(this);
        passwordStrengthMeter = $('.pwdcalc', pwdcalc);
        passwordField = $('#'+passwordStrengthMeter.data('field'));
        passwordScore = passwordField.next(".pwdcalc-score");

        $(this).closest('form').submit(function(event) {
            $(document).trigger('pwdcalc-submit', [event, passwordField]);
        });

        passwordField.yapsm().keyup(function () {
            var strength, localizedHint;

            strength = this.complexity;
            localizedHint = $(".pwdcalc-hint[data-complexity='" + strength + "']").html();

            if (!$.trim(this.value).length) {
                passwordStrengthMeter.hide();
                passwordStrengthMeter.empty();
                passwordScore.hide();
            } else {
                passwordStrengthMeter.show();
                passwordStrengthMeter.attr('data-complexity', strength);
                passwordScore.attr('data-strength', strength).show();
                if (!$.trim(localizedHint).length) {
                    passwordStrengthMeter.html(strength);
                } else {
                    passwordStrengthMeter.html(localizedHint);
                }
            }
        });
    });
});
