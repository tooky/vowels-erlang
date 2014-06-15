-module(vowel_encoder).
-export([encode/1]).

encode([Head|Tail]) ->
  string:concat(encode_char(Head), encode(Tail));
encode(Word) ->
  Word.

encode_char($a) ->
  "1";
encode_char($e) ->
  "2";
encode_char($i) ->
  "3";
encode_char($o) ->
  "4";
encode_char($u) ->
  "5";

encode_char(Char) ->
  [Char].
