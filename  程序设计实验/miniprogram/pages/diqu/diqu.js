// pages/diqu/diqu.js
Page({
  data:{
    markers:[]
},
onLoad(){
var that=this;
wx.getLocation({
  altitude:true,
  success:function(res){
     console.log(res);
     that.setData({
["markers[0]"]:
{
           id:0,
           latitude:res.latitude,
           longitude:res.longitude,
           iconPath:"",
           width:25,
             height:40,
}
})
},
})
var msg1 ={
  "GPS_latitude":39.906565,
  "GPS_longitude":116.225486,
  }
      console.log(msg1);

  let index1="markers[1]";
       that.setData({
  [index1]:{
             id:1,
             latitude:msg1.GPS_latitude,
             longitude:msg1.GPS_longitude,
             iconPath:"../image/病毒.png",
             width:40,
             height:40,
  }
  })



  var msg2 ={
    "GPS_latitude":39.892923,
    "GPS_longitude":116.322092,
    }
        console.log(msg2);
  
    let index="markers[2]";
         that.setData({
    [index]:{
               id:2,
               latitude:msg2.GPS_latitude,
               longitude:msg2.GPS_longitude,
               iconPath:"../image/病毒.png",
               width:40,
               height:40,
    }
    })


    
},


  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
 
  },
  
  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
   
 
   
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})