/*!
 * jquery.pwdcalc.js
 *
 * Copyright 2011, Kjel Delaey (https://github.com/trimentor/pwdcalc)
 * https://github.com/trimentor/pwdcalc/blob/master/LICENSE
 */
$(document).ready(function () {
    $(".pwdcalc").each(function () {
        var passwordStrengthMeter, passwordField, passwordScore;

        passwordStrengthMeter = this;
        passwordField = "#" + $(this).data('field');
        passwordScore = $(passwordField).next(".pwdcalc-score");

        $(passwordField).yapsm().keyup(function () {
            var strength, localizedHint;

            strength = this.complexity;
            localizedHint = $(".pwdcalc-hint[data-complexity='" + strength + "']").html();

            if (!$.trim(this.value).length) {
                $(passwordStrengthMeter).hide();
                $(passwordStrengthMeter).empty();
                $(passwordScore).hide();
            } else {
                $(passwordStrengthMeter).show();
                $(passwordStrengthMeter).attr('data-complexity', strength);
                $(passwordScore).attr('data-strength', strength).show();
                if (!$.trim(localizedHint).length) {
                    $(passwordStrengthMeter).html(strength);
                } else {
                    $(passwordStrengthMeter).html(localizedHint);
                }
            }
        });
    });
});
