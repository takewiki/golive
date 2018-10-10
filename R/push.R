#' 获取shiny服务器基本代码 
#'
#' @return 返回字符串
#' @export
#'
#' @examples  server_url();
server_url <- function() {
  res  <- '/srv/shiny-server/';
  return(res);
  
}
#' 获取客户端基本URL
#'
#' @return 返回值
#' @export
#'
#' @examples client_url();
client_url <- function(){
  

  res <- '/home/hulilei/webContains/';
  return(res);
}

#' 将本地的程序发布到reshapedata.com上
#'
#' @param appName 程序目录名称
#' @param parent  上述路径名称
#'
#' @return 返回值
#' @export
#'
#' @examples shiny_push('demo1','demo');
shiny_push <- function(appName="",parent="") {
  
  surl <- server_url();
  curl <-client_url();
  from <- paste(curl,appName,sep = "");
  to <- paste(surl,parent,sep="")
  if (!dir.exists(to)){
    dir.create(to);
  }
  if(!dir.exists(from)){
    FALSE
  }else{
    file.copy(from,to,recursive = T,overwrite = T);
  }
  
  
}