# DockerLibRETS
Currently only supports swig python bindings.

### To Install
```
docker build -t pythonlibrets .
```

### To Run
```
docker run --name some-librets -d librets tail -f /dev/null
```

### (Optional) Using a virtualenv

If running on a virtualenv, after running the above script, activate the virtualenv, then `cd /tmp/libRETS-1.6.2/build/swig/python` and `python setup.py install`

### To Check Install

If the build succeeds, you should be able to enter a python shell and `import librets`.