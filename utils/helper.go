package utils

import (
	"crypto"
	"encoding/hex"
	"fmt"
	"strings"
)

func SHA256Encode(s string) string {
	sha256 := crypto.SHA256.New()
	sha256.Write([]byte(s))
	return hex.EncodeToString(sha256.Sum(nil))
}

func Url(url string, params ...interface{}) string {
	queryString := ""
	for index, item := range params {
		if index%2 == 0 {
			queryString += item.(string) + "="
		} else {
			queryString += ToString(item) + "&"
		}
	}
	if url != "/" {
		url = strings.TrimRight(url, "/")
	}
	queryString = strings.TrimRight(queryString, "&")
	return url + "?" + queryString
}

func ToString(i interface{}) string {
	switch i.(type) {
	case string:
		return i.(string)
	case int:
		return fmt.Sprintf("%d", i)
	case int64:
		return fmt.Sprintf("%d", i)
	}
	return ""
}