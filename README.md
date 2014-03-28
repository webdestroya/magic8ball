# Magic 8-Ball

This is a super simple site I made that just shows the user various 8-ball responses.

It serves absolutely no other purpose. Enjoy.

## See it in action

You can see it in action at http://8ball.mitchdempsey.com/


## JSON Access

If you want, you may access this site via JSON API calls.
  
     http://8ball.mitchdempsey.com/shake.json

Will respond with: 

    HTTP/1.1 200 OK 
    Content-Type: application/json; charset=utf-8
    ...
    Content-Length: 32
    
    {"answer":"Outlook not so good"}
	

## JSONP Access
If you want, you may access this site via JSONP API calls.
  
     http://8ball.mitchdempsey.com/shake.js?callback=yourCallbackName

Will respond with: 

    HTTP/1.1 200 OK 
    Content-Type: application/javascript; charset=utf-8
    ...
    
    yourCallbackName({"answer":"Outlook not so good"})

## Google Analytics

If you specify the `GA_ACCOUNT` environment variable with your Google Analytics account ID, then stats tracking will be loaded.

## License

There is no license at all for this. Do what you want, as you please.

However, I do not suggest using this application to guide you in making any life changing decisions.