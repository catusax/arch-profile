package main

import (
	"fmt"
	"net/http"
	"io/ioutil"
	"encoding/json"
	"bytes"
	"github.com/silenceper/wechat"
	"github.com/silenceper/wechat/message"
)

type PostMsg struct {
    Key     string `json:"key"`
    Info    string `json:"info"`
    Userid  string `json:"userid"`
}
type Answer struct {
	Code	int `json:"code"`
	Text	string `json:"text"`
}

func tuling(info string,userid string) string {

    var post PostMsg
    post.Key = "1cacc034dabc4ad09281900f8e16b079"
    post.Info = info
    post.Userid = userid
    msg,_ := json.Marshal(post)
    fmt.Println(string(msg))

    res, err := http.Post("http://www.tuling123.com/openapi/api", "application/json;charset=utf-8", bytes.NewBuffer(msg))
    if err != nil {
        fmt.Println("Fatal error ", err.Error())
        }

    defer res.Body.Close()

	content, err := ioutil.ReadAll(res.Body)
	if err != nil {
        fmt.Println("Fatal error ", err.Error())
	}
	var ans Answer
	err = json.Unmarshal([]byte(content), &ans)

	fmt.Println(string(content))
	fmt.Println(ans.Text,err)
	return ans.Text
}

func hello(rw http.ResponseWriter, req *http.Request) {

	//配置微信参数
	config := &wechat.Config{
		AppID:          "wxe68ebb23be0f4858",
		AppSecret:      "46df5b9fa7ad91e7df528f87eb2e4e18",
		Token:          "coolrc",
		EncodingAESKey: "8OAbl97JhEP2SN3pUpkFTloyC5o6OQ0WTrMJfvz92XM",
	}
	wc := wechat.NewWechat(config)

	// 传入request和responseWriter
	server := wc.GetServer(req, rw)
	//设置接收消息的处理方法
	server.SetMessageHandler(func(msg message.MixMessage) *message.Reply {

		//回复消息：演示回复用户发送的消息
		//text := message.NewText(msg.Content)
		rep := tuling(msg.Content,msg.FromUserName)
		text := message.NewText(rep)
		//fmt.Printf(msg.Content)
		return &message.Reply{MsgType: message.MsgTypeText, MsgData: text}
	})

	//处理消息接收以及回复
	err := server.Serve()
	if err != nil {
		fmt.Println(err)
		return
	}
	//发送回复的消息
	err = server.Send()
    if err != nil {     
        fmt.Println(err)
    } 
}

func main() {
	http.HandleFunc("/wechat", hello)
	err := http.ListenAndServe(":80", nil)
	if err != nil {
		fmt.Printf("start server error , err=%v", err)
	}
}
