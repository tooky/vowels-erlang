-module(vowel_encoder_tests).
-include_lib("eunit/include/eunit.hrl").

single_consonant_returns_the_single_consonant_test() ->
  assert_encoded_word("b", "b").

vowel_is_encoded_test() ->
  assert_encoded_word("a", "1"),
  assert_encoded_word("e", "2").

vowel_is_encoded_and_consonants_are_not_test() ->
  assert_encoded_word("ab", "1b"),
  assert_encoded_word("eb", "2b"),
  assert_encoded_word("be", "b2").

vowel_in_middle_of_two_consonants_test() ->
  assert_encoded_word("cat", "c1t").

two_vowels_test() ->
  assert_encoded_word("ea", "21").

all_the_vowels_test() ->
  assert_encoded_word("facetious", "f1c2t345s").

assert_encoded_word(Word, Result) ->
  Encoded = vowel_encoder:encode(Word),
  ?assertEqual(Result, Encoded).
