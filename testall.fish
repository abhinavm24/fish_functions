function testall
    for name in test*.py
        echo "Testing" $name
        nosetests $name 2>| grep "test.*py"
    end
end
