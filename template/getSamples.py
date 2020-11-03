import sys
import urllib.request

contest = sys.argv[1]
diffArr = ["a", "b", "c", "d", "e", "f"]
for diff in diffArr:
    url = 'https://atcoder.jp/contests/{0}/tasks/{0}_{1}'.format(contest, diff)
    req = urllib.request.Request(url)
    res = urllib.request.urlopen(req)
    body = res.read().decode('utf-8')
    bodyArr = body.split("<div class=\"part\">")

    inputSampleNum = 0
    outputSampleNum = 0

    for body in bodyArr:
        if(("入力例" in body) or ("出力例" in body)):
            sample = body.split("<pre>")[1].split("</pre>")[0]

            if(("入力例" in body)):
                inputSampleNum += 1
                path = "./{0}/samples/{1}/input/{2}.txt".format(
                    contest, diff, inputSampleNum)
            else:
                outputSampleNum += 1
                path = "./{0}/samples/{1}/output/{2}.txt".format(
                    contest, diff, outputSampleNum)

            f = open(path, "w")
            f.write(sample)
            f.close()
