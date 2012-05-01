/*!
 * jquery.pwdcalc.js
 *
 * Copyright 2012, Kjel Delaey (https://github.com/trimentor/pwdcalc)
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

        passwordField.yapsm({
            dictionary: function() {
                var dataDictionary, list;
                dataDictionary = passwordField.data('dictionary');
                list = [];

                if(dataDictionary) {
                    try {
                        list = eval(dataDictionary);
                    } catch(error) {}
                }
                return list;
            }
        }).keyup(function (event) {
            var val, minLength, strength, localizedHint;

            val = $.trim(this.value);
            minLength = $(this).data('minlength');
            strength = this.complexity;
            localizedHint = $(".pwdcalc-hint[data-complexity='" + strength + "']").html();

            $(document).trigger('pwdcalc-keyup-init', [event, $(this)]);

            if (!val.length || (minLength && val.length < minLength)) {
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

            $(document).trigger('pwdcalc-keyup-complete', [event, $(this)]);
        });
    });
});
