config:
  target: 'https://{{domain}}/dev/xmltojson'
  phases:
    - duration: 60
      arrivalRate: 20
      num: 1
scenarios:
  - flow:
      - post:
          url: "/"
          form:
            xml: "<?xml version=\"1.0\" encoding=\"UTF-8\"?><hello>world</hello>"