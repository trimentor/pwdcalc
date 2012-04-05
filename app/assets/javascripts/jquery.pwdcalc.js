/*!
 * jquery.pwdcalc.js
 *
 * Copyright 2011, Kjel Delaey (https://github.com/trimentor/pwdcalc)
 * https://github.com/trimentor/pwdcalc/blob/master/LICENSE
 */
$(document).ready(function() {
    $(".pwdcalc").each(function() {
        var passwordStrengthMeter = this;
        var passwordField = "#" + $(this).data('field');

        $(passwordField).yapsm().keyup(function() {
            var strength = this.complexity;
            var localizedHint = $(".pwdcalc-hint[data-complexity='"+strength+"']").html();

            if(!$.trim(this.value).length) {
                $(passwordStrengthMeter).hide();
                $(passwordStrengthMeter).empty();
            } else {
                $(passwordStrengthMeter).show();
                $(passwordStrengthMeter).attr('data-complexity', strength);
                if(!$.trim(localizedHint).length) {
                    $(passwordStrengthMeter).html(strength);
                } else {
                    $(passwordStrengthMeter).html(localizedHint);
                }
            }
        });
    });
});
