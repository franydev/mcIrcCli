local io = {}
function io.stream(a,b,c)checkArg(1,a,'number')checkArg(2,b,"table","string","nil")assert(a>=0,'fd must be >= 0. 0 is input, 1 is stdout, 2 is stderr')local d=require("process").info().data.io;if b then if type(b)=="string"then b=assert(io.open(b,c))end;d[a]=b end;return d[a]end;function io.output(a)return io.stream(1,a,'w')end;function io.write(...)return io.output():write(...)end;

print("Hello World!")

while true do
end