/*
Copyright 2012, Kjel Delaey (https://github.com/trimentor/pwdcalc)
https://github.com/trimentor/pwdcalc/blob/master/LICENSE
*/


(function() {

  this.Pwdcalc = (function() {

    function Pwdcalc(selector) {
      this.$inputWrapper = $(selector);
      this.bindYapsm();
      this.bindSubmit();
    }

    Pwdcalc.prototype.bindYapsm = function() {
      var $input,
        _this = this;
      $input = $('input', this.$inputWrapper);
      return $input.yapsm({
        dictionary: function() {
          var dataDictionary, list;
          dataDictionary = $input.data('dictionary');
          list = [];
          if (dataDictionary) {
            try {
              list = eval(dataDictionary);
            } catch (_error) {}
          }
          return list;
        }
      }).keyup(function(event) {
        return _this.calculateStrength(event);
      });
    };

    Pwdcalc.prototype.bindSubmit = function() {
      var _this = this;
      return this.$inputWrapper.closest('form').submit(function(event) {
        return _this.trigger('pwdcalc-submit', event);
      });
    };

    Pwdcalc.prototype.calculateStrength = function(event) {
      var $input, el, i18nStrength, pwd, requiredChars, strength, yapsmInput, _i, _len;
      $input = $('input', this.$inputWrapper);
      yapsmInput = 'undefined';
      for (_i = 0, _len = $input.length; _i < _len; _i++) {
        el = $input[_i];
        if (el.complexity) {
          yapsmInput = el;
          break;
        }
      }
      pwd = $.trim(yapsmInput.value);
      strength = yapsmInput.complexity;
      requiredChars = $input.data('minlength');
      i18nStrength = $(".pwdcalc-hint[data-complexity=" + strength + "]").html();
      this.trigger('pwdcalc-keyup-init', event);
      this.showStrength(strength, i18nStrength, pwd, requiredChars);
      return this.trigger('pwdcalc-keyup-complete', event);
    };

    Pwdcalc.prototype.showStrength = function(strength, i18nStrength, pwd, requiredChars) {
      var $gauge, $helpBlock;
      $helpBlock = $('.pwdcalc-help-block', this.$inputWrapper);
      $gauge = $('.pwdcalc-gauge', this.$inputWrapper);
      if (!pwd.length || (requiredChars && pwd.length < requiredChars)) {
        $helpBlock.hide().empty();
        return $gauge.hide();
      } else {
        $helpBlock.show().attr('data-complexity', strength);
        $gauge.attr('data-strength', strength).show();
        if (i18nStrength === undefined || !$.trim(i18nStrength.length)) {
          return $helpBlock.html(strength);
        } else {
          return $helpBlock.html(i18nStrength);
        }
      }
    };

    Pwdcalc.prototype.trigger = function(eventType, event) {
      var $input;
      $input = $('input', this.$inputWrapper);
      return $(document).trigger(eventType, [event, $input]);
    };

    return Pwdcalc;

  })();

  $(document).on('ready page:load', function () {
    return $(".pwdcalc-form-group").each(function() {
      return new Pwdcalc(this);
    });
  });

}).call(this);
