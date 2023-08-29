class DynamicMockData {
  static  Future<List<Map<String, Object>>> list(int page, int size)async {
    return List.generate(size, (index){
      return {
        'title':'标题${index+(page-1)*size+1}:这是一个列表标题，最多两行，多出部分将会被截取',
        'imageUrl':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq6_irvtrL7374-mW6_a1f_ly9RuuMpPRV0w&usqp=CAU",
        'viewCount':180
      };
    });
  }
}
