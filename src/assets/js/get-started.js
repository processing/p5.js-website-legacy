const copyToClipboard = (element)=> {
    const value = document.getElementById(element).innerText;
    const el = document.createElement('textarea');
    el.value = value;
    el.setAttribute('readonly', '');
    el.style.position = 'absolute';
    el.style.left = '-9999px';
    el.setAttribute('aria-hidden','true');
    document.body.appendChild(el);
    el.select();
    document.execCommand('copy');
    document.body.removeChild(el);
}
$("#copy_sketch1").click(()=>{
    copyToClipboard("first-sketch1");
})
$("#copy_sketch2").click(()=>{
    copyToClipboard("first-sketch2");
});
$("#copy_sketch3").click(()=>{
    copyToClipboard("first-sketch3");
});
$("#copy_p5_script").click(()=>{
    copyToClipboard("markup1");
});
$("#copy_p5_link").click(()=>{
    copyToClipboard("cdn-link");
});
$("#copy_p5_html").click(()=>{
    copyToClipboard("sample-html");
});
