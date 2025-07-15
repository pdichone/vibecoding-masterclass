// grab the original userId from your Extract Fields node
// const userId = $node["Extract Fields"].json["userId"];

const userId = $('Extract Fields').first().json.body.userId
// `items` is the array coming out of whichever extractor ran.
// Turn each item’s json into one “content” array:
const content = items.map(i => i.json);

// emit exactly one object with both userId + content 
return [{
  json: {
    userId,
    content
  }
}];
