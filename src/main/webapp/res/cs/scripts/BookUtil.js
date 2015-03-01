function _BookUtil()
{
    this.deleteBook=function(id)
    {
        if(confirm("Вы действительно хотите удалить книгу?"))
        {
            window.location = "deleteBook/" + id;
        }
    }
}

var BookUtil = new _BookUtil();