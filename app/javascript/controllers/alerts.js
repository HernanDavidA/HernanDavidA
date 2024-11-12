let interval = setInterval(myCallback, 2000, "Hello World!");



function myCallback(message) {
    console.log(message);
}

clearInterval(interval);