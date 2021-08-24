document.addEventListener('DOMContentLoaded', function(){
  if ( document.getElementsByClassName('list-elements').length){
    const List = document.getElementsByClassName("list-elements")
   
    List[0].addEventListener('mouseover', function(){
      List[0].setAttribute("style", "color:#BFBFBF;")
    })
    List[0].addEventListener('mouseout', function(){
      List[0].removeAttribute("style", "color:#BFBFBF;")
    })

    List[1].addEventListener('mouseover', function(){
      List[1].setAttribute("style", "color:#BFBFBF;")
    })
    List[1].addEventListener('mouseout', function(){
      List[1].removeAttribute("style", "color:#BFBFBF;")
    })

    List[2].addEventListener('mouseover', function(){
      List[2].setAttribute("style", "color:#BFBFBF;")
    })
    List[2].addEventListener('mouseout', function(){
      List[2].removeAttribute("style", "color:#BFBFBF;")
    })

    List[3].addEventListener('mouseover', function(){
      List[3].setAttribute("style", "color:#BFBFBF;")
    })
    List[3].addEventListener('mouseout', function(){
      List[3].removeAttribute("style", "color:#BFBFBF;")
    })

    List[4].addEventListener('mouseover', function(){
      List[4].setAttribute("style", "color:#BFBFBF;")
    })
    List[4].addEventListener('mouseout', function(){
      List[4].removeAttribute("style", "color:#BFBFBF;")
    })

    List[5].addEventListener('mouseover', function(){
      List[5].setAttribute("style", "color:#BFBFBF;")
    })
    List[5].addEventListener('mouseout', function(){
      List[5].removeAttribute("style", "color:#BFBFBF;")
    })
  }

  if ( document.getElementsByClassName('co-list-elements').length){
    const coList = document.getElementsByClassName("co-list-elements")
   
    coList[0].addEventListener('mouseover', function(){
      coList[0].setAttribute("style", "color:#7f95af;")
    })
    coList[0].addEventListener('mouseout', function(){
      coList[0].removeAttribute("style", "color:#7f95af;")
    })

    coList[1].addEventListener('mouseover', function(){
      coList[1].setAttribute("style", "color:#7f95af;")
    })
    coList[1].addEventListener('mouseout', function(){
      coList[1].removeAttribute("style", "color:#7f95af;")
    })

    coList[2].addEventListener('mouseover', function(){
      coList[2].setAttribute("style", "color:#7f95af;")
    })
    coList[2].addEventListener('mouseout', function(){
      coList[2].removeAttribute("style", "color:#7f95af;")
    })

    coList[3].addEventListener('mouseover', function(){
      coList[3].setAttribute("style", "color:#7f95af;")
    })
    coList[3].addEventListener('mouseout', function(){
      coList[3].removeAttribute("style", "color:#7f95af;")
    })

    coList[4].addEventListener('mouseover', function(){
      coList[4].setAttribute("style", "color:#7f95af;")
    })
    coList[4].addEventListener('mouseout', function(){
      coList[4].removeAttribute("style", "color:#7f95af;")
    })
  }
})