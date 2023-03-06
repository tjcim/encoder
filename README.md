# Encoder

This will be a web-based encoding and decoding tool.

I plan on having a similar interface to Burp Suite Decoder, but with a few more options and fix some of the things I dislike about Decoder.

## Desired Coding/Decoding:

* Base64
* HTML - Named
* XML - Entity
* XML - 0 padded
* XML - Named
* XML - Entity
* Unicode
* Unicode - ES6 (using curly braces)
* Unicode Wide
* URL - Key Characters
* URL - All Characters
* Hex - with \x
* Hex - with 0x
* Octal
* CHAR (SQL)

## Desired Functionality:

* I want the tool to be able to encode only specific characters in the text as well as all characters in the text box. For example, if I have text that I want to HTML encode. I want the ability to choose to encode just characters like `<` and `>`. Instead of all the text.
* Characters to encode should be modifiable by the user. So, in one instance I may want to HTML encode all `<` and `>` characters, but in another I may also want to include the letter `a`. I should have a box to add additional characters to encode.
* I want the user to be able to highlight specific text to be encoded in a specific format. The idea is that different parts of the text can be encoded in different ways at the same time. For example, given this text: `Here is some sample text`; I would like to have the ability to highlight the word `Here` and set that to encode as Base64 and then highlight the word `sample` and set that to encode as HTML.
* I want the tool to encode/decode automatically (via ajax) as soon as a scheme is chosen, while still being able to change the encoding/decoding as desired.
* An output box should appear as soon as an encoding/decoding is done displaying the encoded/decoded text. There should be no limit on the number of times a specific text can be encoded/decoded.
