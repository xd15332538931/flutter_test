class DynamicMockData {
  static  Future<List<Map<String, Object>>> list(int page, int size)async {
    return List.generate(size, (index){
      return {
        'title':'标题${index+(page-1)*size+1}:这是一个列表标题，最多两行，多出部分将会被截取',
        'imageUrl':"https://img0.baidu.com/it/u=3021883569,1259262591&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1693501200&t=af327262091e247f386e3ddd0f484e16",
        'viewCount':180
      };
    });
  }
}
