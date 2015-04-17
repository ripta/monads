
def None()
  Monads::None.()
end

def None?(option)
  case option
  when Monads::None
    true
  else
    false
  end
end

def Option(value)
  Monads::Option.(value)
end

def Option?(option)
  case option
  when Monads::None, Monads::Some
    true
  else
    false
  end
end

def Some(value)
  Monads::Some.(value)
end

def Some?(option)
  case option
  when Monads::Some
    true
  else
    false
  end
end
