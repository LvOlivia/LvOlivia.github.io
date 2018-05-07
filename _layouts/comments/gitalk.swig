{% if not (theme.duoshuo and theme.duoshuo.shortname) and not theme.duoshuo_shortname %}
  
  {% if theme.gitalk.enable %}  //_config.yml文件若没有添加enable: true可删除该判断

    {% if theme.gitalk.distractionFreeMode  %}      
      <link rel='stylesheet' href="https://yiyeti.cc/usr/themes/veryse/css/gitalk.css">
      <script src="https://yiyeti.cc/usr/themes/veryse/css/gitalk.min.js"></script>
      <script type="text/javascript">
          var gitalk = new Gitalk({
            clientID:  '{{theme.gitalk.clientID}}', 
            clientSecret: '{{theme.gitalk.clientSecret}}',
            id: window.location.pathname,
            repo: '{{theme.gitalk.repo}}', 
            owner: '{{theme.gitalk.owner}}', 
            admin: '{{theme.gitalk.admin}}', 
            distractionFreeMode: '{{theme.gitalk.distractionFreeMode}}',
          })
          gitalk.render('gitalk-container')
      </script>
    {% endif %}

  {% endif %}
{% endif %}

作者：Erbiduo
链接：https://www.jianshu.com/p/9be29ed2f4b7
來源：简书
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。