import {Socket} from "phoenix"

var socket = new Socket("/ws");
var message = $("#message-field");
var button = $("button");
message.focus();
message.on("keyup", function(e) {
  if (e.keyCode == 13) {
    button.trigger("click");
    message.val("");
  }
});
var chatWindow = $("#chat-window");

socket.connect();
window.channel = socket.chan("chats:lobby", {});
channel.join().receive("ok", response => {
  console.log(button);
  button.on("click", function() {
    channel.push("chats:lobby", { message: message.val() });
  });
});

channel.on("chats:lobby", function(response) {
  console.log(`responded with: ${response.message}`);
  chatWindow.append(`<p class="message">${response.message}</p>`);
});

var App = {};

export default App
