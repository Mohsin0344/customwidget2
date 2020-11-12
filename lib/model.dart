class Data{
  var _image;
  var _title;
  var _price;

  get image => _image;

  set image(value) {
    _image = value;
  }

  Data(this._image, this._title, this._price);

  get title => _title;

  set title(value) {
    _title = value;
  }

  get price => _price;

  set price(value) {
    _price = value;
  }
}