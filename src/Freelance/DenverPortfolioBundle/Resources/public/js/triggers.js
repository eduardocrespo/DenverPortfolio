
function clickTrigger(thisfield, defaulttext) {
if (thisfield.value == defaulttext) {
thisfield.value = "";
}
}

function blurTrigger(thisfield, defaulttext) {
if (thisfield.value == "") {
thisfield.value = defaulttext;
}
}