hash = { a: { b: { c: 42, d: 'foo' }, d: 'bar' }, e: 'baz' }
r = {}
hash.each do |k,v|
  if v.class == Hash
    v.each do |k1, v1|
      if v1.class == Hash
        v1.each do |k2, v2 |
          r[(k.to_s + '_' + k1.to_s + '_' + k2.to_s).to_sym] =  v2
        end
      else
        r[(k.to_s + '_' + k1.to_s).to_sym] =  v1
      end
    end
  else
    r[k] =  v
  end
end


def hash(hash)
  
end
