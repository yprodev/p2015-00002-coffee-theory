// Generated by CoffeeScript 1.10.0
(function() {
  var element, event, fn, i, index, j, k, l, len, len1, len2, len3, len4, m, n, o, p, primeNumbers, property, q, r, ref, s, t, u, v, value, w, x,
    indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; },
    hasProp = {}.hasOwnProperty;

  while (isReady) {
    something();
  }

  while (isReady) {
    something();
  }

  while (isReady) {
    something();
  }

  while (!isReady) {
    something();
  }

  while (!isReady) {
    something();
  }

  while (!isReady) {
    prepare();
  }

  for (i = j = 0; j <= 10; i = ++j) {
    update(i);
  }

  for (i = k = 0; k <= 10; i = ++k) {
    update(i);
  }

  for (i = l = 0; l <= 10; i = ++l) {
    update(i);
  }

  for (i = m = 0; m <= 10; i = m += 4) {
    update(i);
  }

  for (i = n = 0; n <= 10; i = n += .5) {
    update(i);
  }

  for (i = o = 0; o <= 100; i = ++o) {
    if (isPrime(i)) {
      update(i);
    }
  }

  for (i = p = 0; p <= 100; i = ++p) {
    if (isPrime(i)) {
      console.log(i);
    }
  }

  for (i = q = 0; q <= 100; i = q += 2) {
    if (isPrime(i)) {
      console.log(i);
    }
  }

  for (i = r = 0; r <= 100; i = r += 2) {
    if (isPrime(i)) {
      console.log(i);
    }
  }

  primeNumbers = (function() {
    var results, s;
    results = [];
    for (i = s = 0; s <= 100; i = s += 2) {
      if (isPrime(i)) {
        results.push(i);
      }
    }
    return results;
  })();

  for (i = s = 0; s <= 100; i = s += 2) {
    if (isPrime(i)) {
      primeNumbers = i;
    }
  }

  if (i) {
    primeNumbers = i;
  }

  for (t = 0, len = array.length; t < len; t++) {
    element = array[t];
    show(element);
  }

  for (u = 0, len1 = array.length; u < len1; u++) {
    element = array[u];
    if (indexOf.call(rightElements, element) >= 0) {
      show(element);
    }
  }

  for (index = v = 0, len2 = array.length; v < len2; index = ++v) {
    element = array[index];
    if (indexOf.call(rightElements, element) >= 0) {
      show(element);
    }
  }

  for (index = w = 0, len3 = array.length; w < len3; index = ++w) {
    element = array[index];
    if (indexOf.call(rightElements, element) >= 0) {
      remove(index);
    }
  }

  for (property in object) {
    console.log(property);
  }

  for (property in object) {
    console.log(object[property]);
  }

  for (property in object) {
    value = object[property];
    console.log(value);
  }

  for (property in object) {
    if (!hasProp.call(object, property)) continue;
    value = object[property];
    console.log(value);
  }

  ref = ["click", "mouseover", "mouseout", "focus"];
  fn = function(event) {
    mySuperLibrary.prototype["on" + event] = function(callback) {
      mySuperLibrary.prototype.on(event, callback);
    };
  };
  for (x = 0, len4 = ref.length; x < len4; x++) {
    event = ref[x];
    fn(event);
  }

}).call(this);
