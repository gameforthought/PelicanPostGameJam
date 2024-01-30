// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ease_in_out_quint(_input_value, _output_min, _output_max, _input_max){
	_input_value /= _input_max * 0.5;

if (_input_value < 1)
{
    return _output_max * 0.5 * power(_input_value, 5) + _output_min;
}

return _output_max * 0.5 * (power(_input_value - 2, 5) + 2) + _output_min;
}



function ease_in_out_cubic(_input_value, _output_min, _output_max, _input_max) {
	_input_value /= _input_max * 0.5;

if (_input_value < 1)
{
   return _output_max * 0.5 * power(_input_value, 3) + _output_min;
}

return _output_max * 0.5 * (power(_input_value - 2, 3) + 2) + _output_min;
}

function ease_in_out_quad(_input_value, _output_min, _output_max, _input_max) {
	_input_value /= _input_max * 0.5;

if (_input_value < 1)
{
    return _output_max * 0.5 * _input_value * _input_value + _output_min;
}

return _output_max * -0.5 * (--_input_value * (_input_value - 2) - 1) + _output_min;
}

function EaseInOutBack(_inputvalue,_outputmin,_outputmax,_inputmax) {
var _s = 1.70158;

_inputvalue = _inputvalue/_inputmax*2

if (_inputvalue < 1)
{
    _s *= 1.525;
    return _outputmax * 0.5 * (_inputvalue * _inputvalue * ((_s + 1) * _inputvalue - _s)) + _outputmin;
}

_inputvalue -= 2;
_s *= 1.525

return _outputmax * 0.5 * (_inputvalue * _inputvalue * ((_s + 1) * _inputvalue + _s) + 2) + _outputmin;
}

function EaseInBack(_inputvalue,_outputmin,_outputmax,_inputmax) {
var _s = 1.70158;

_inputvalue /= _inputmax;
return _outputmax * _inputvalue * _inputvalue * ((_s + 1) * _inputvalue - _s) + _outputmin;
}