curl -X POST --compressed "https://api.slai.io/model/call" \
   -H 'Accept: */*' \
   -H 'Accept-Encoding: gzip, deflate' \
   -H 'Authorization: Basic ZDdhYjhkYWQxZmRlMjU2NjdhOTBjYjZlNTQwNjZmODY6OGJiMzdkNzMzMmJmOTlkYjQxZGM0YmYwY2U2MjhmOTA=' \
   -H 'Connection: keep-alive' \
   -H 'Content-Type: application/json' \
   -d '{"model_id": "6221072105e86f0008e6ea30", "model_version_id": "6221072105e86f0008e6ea31", "payload": {"input_image": "https://pngimg.com/uploads/apple/apple_PNG12489.png"}}'
