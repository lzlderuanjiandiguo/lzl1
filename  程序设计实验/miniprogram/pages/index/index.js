
const app = getApp()

Page({
  data:{
picsrc:'https://img1.baidu.com/it/u=142521566,78321151&fm=253&fmt=auto&app=120&f=JPEG?w=1080&h=538',
data1:[],
data2:[]
},

onLoad() {
  let that = this;
wx.request({
    url: 'http://localhost/selectData1.php',
    data:{},
    method:'GET',
    header:{
      'content-Type':'application/json'
    },
    success:function(res){
      that.setData({
        data1:res.data,
      });
    }
  })
  wx.request({
    url: 'http://localhost/selectData2.php',
    data:{},
    method:'GET',
    header:{
      'content-Type':'application/json'
    },
    success:function(res){
     
      that.setData({
        data2:res.data,
      });
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
