/*
* @Author: 张轶婷
* @Date:   2021-05-12 10:38:52
* @Last Modified by:   Marte
* @Last Modified time: 2021-07-09 10:02:29
*/

'use strict';
//引入exprss框架
let express = require ('express')
//创建服务器网站
    let app = express()

    let bodyParser = require('body-parser')

    app.engine('html',require('express-art-template'))

    app.use(bodyParser.urlencoded({extend:false}))

    app.use(express.static('public'))

//配置数据库链接
    var mysql = require ('mysql')
    var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123456',
        database : 'blog',
        multipleStatements: true // 支持执行多条 sql 语句
    });

//配置路由
    // app.get('/index.html',function  (req,res) {
    //     res.render('web/index.html')
    // })

    // app.get('/about.html',function  (req,res) {
    //     res.render('web/about.html')
    // })

    // app.get('/blog.html',function  (req,res) {
    //     res.render('web/blog.html')
    // })

    // app.get('/contact.html',function  (req,res) {
    //     res.render('web/contact.html')
    // })

    // app.get('/single-page.html',function  (req,res) {
    //     res.render('web/single-page.html')
    // })

    // app.get('/technology.html',function  (req,res) {
    //     res.render('web/technology.html')
    // })

    // app.use(function  (req,res) {
    //     res.render('web/404.html')
    // })

// 增加后台路由
    // app.get('/admin/index.html',function  (req,res) {
    //     res.render('admin/index.html')
    // })

    // app.get('/admin/welcome.html',function  (req,res) {
    //     res.render('admin/welcome.html')
    // })

//普通路由转为链式方程路由
//前端路由
    let r1 = express.Router()
    app.use('/',r1)
    r1.get('/',function  (req,res) {
        // res.render('web/index.html')
        // 测试数据库是否链接成功
        connection.query('select * from banner_table;select * from intro_table',function  (err,data) {
            if (err) {
                console.log(err);
            } else{
                // res.send(data)
                res.render('web/index.html',{
                    banner:data[0],
                    intro:data[1]
                })
            }
        })
    }).get('/index.html',function  (req,res) {
        res.redirect('/')
    }).get('/about.html',function  (req,res) {
        res.render('web/about.html')
    }).get('/blog.html',function  (req,res) {
        res.render('web/blog.html')
    }).get('/contact.html',function  (req,res) {
        res.render('web/contact.html')
    }).get('/single-page.html',function  (req,res) {
        res.render('web/single-page.html')
    }).get('/technology.html',function  (req,res) {
        res.render('web/technology.html')
    })

//后台路由
    let r2 = express.Router()
    app.use('/admin/',r2)
    r2.get('/index.html',function  (req,res) {
        res.render('admin/index.html')
    }).get('/welcome.html',function  (req,res) {
        res.render('admin/welcome.html')
    }).get('/member-list.html',function  (req,res) {
        res.render('admin/member-list.html')
    }).get('/member-add.html',function  (req,res) {
        res.render('admin/member-add.html')
    }).get('/member-del.html',function  (req,res) {
        res.render('admin/member-del.html')
    }).get('/member-edit.html',function  (req,res) {
        res.render('admin/member-edit.html')
    }).get('/banner-list.html',function  (req,res) {
        connection.query('select * from banner_table;select * from intro_table;select * from msg_table;select * from pingjia_table',function  (err,data) {
            if (err) {
                console.log(err);
            } else{
                // res.send(data)
                res.render('admin/banner-list.html',{
                    banners:data[0],
                    intros:data[1],
                    msgs:data[2],
                    pingjias:data[3],
                    blogs:data[4],
                    techs:data[5],
                })
            }
        })
        // res.render('admin/banner-list.html')
    }).get('/banner-add.html',function  (req,res) {
        res.render('admin/banner-add.html')
    }).post('/banner-add',function  (req,res) {
        connection.query('insert into banner_table values(0,"'+req.body.title+'","'+req.body.description+'","'+req.body.href+'")',function  (err) {
            if (err) {
                res.send(err.message)
            } else{
                res.send({code:200})
            }
        })
    }).get('/banner-del.html',function  (req,res) {
        res.render('admin/banner-del.html')
    }).post('/banner-del',function  (req,res) {
        connection.query('delete from banner_table where id=' +parseInt(req.body.id)+''),function  (err) {
            if (err) {
                res.send(err.message)
            } else{
                res.send({code:200})
            }
        }
    }).get('/banner-edit.html',function  (req,res) {
        connection.query('select * from banner_table where id ='+parseInt(req.query.id)+'',function  (err,data) {
            if (err) {
                res.send(err.message)
            } else if (data.length==0){
                res.send('no data!')
            } else{
                res.render('admin/banner-edit.html',{banner:data[6]})
            }
        })
        // res.render{}'admin/banner-edit.html')
    }).post('/banner-edit',function  (req,res) {
        connection.query('updata from banner_table set title="'+ req.body.title +'",href="'+ req.body.href +'",description="'+ req.body.description +'" where id=' +req.body.id+'',function  (err) {
            if (err) {
                // res.send(err.message)
                console.log(err)
            } else{
                res.send({code:200})
            }
        })
    }).get('/product-list.html',function  (req,res) {
        connection.query('select * from banner_table;select * from intro_table;select * from msg_table;select * from pingjia_table',function  (err,data) {
            if (err) {
                console.log(err);
            } else{
                // res.send(data)
                res.render('admin/product-list.html',{
                    banners:data[0],
                    intros:data[1],
                    msgs:data[2],
                    pingjias:data[3],
                    blogs:data[4],
                    techs:data[5],
                })
            }
        })
        // res.render('admin/product-list.html')
    }).get('/product-add.html',function  (req,res) {
        res.render('admin/product-add.html')
    }).get('/product-del.html',function  (req,res) {
        res.render('admin/product-del.html')
    }).get('/product-edit.html',function  (req,res) {
        res.render('admin/product-edit.html')
    }).get('/pingjia-list.html',function  (req,res) {
        connection.query('select * from banner_table;select * from intro_table;select * from msg_table;select * from pingjia_table',function  (err,data) {
            if (err) {
                console.log(err);
            } else{
                // res.send(data)
                res.render('admin/pingjia-list.html',{
                    banners:data[0],
                    intros:data[1],
                    msgs:data[2],
                    pingjias:data[3],
                    blogs:data[4],
                    techs:data[5],
                })
            }
        })
        // res.render('admin/pingjia-list.html')
    }).get('/pingjia-add.html',function  (req,res) {
        res.render('admin/pingjia-add.html')
    }).get('/pingjia-del.html',function  (req,res) {
        res.render('admin/pingjia-del.html')
    }).get('/pingjia-edit.html',function  (req,res) {
        res.render('admin/pingjia-edit.html')
    }).get('/technology-list.html',function  (req,res) {
        connection.query('select * from banner_table;select * from intro_table;select * from msg_table;select * from pingjia_table;select * from tech_table;',function  (err,data) {
            if (err) {
                console.log(err);
            } else{
                // res.send(data)
                res.render('admin/technology-list.html',{
                    banners:data[0],
                    intros:data[1],
                    msgs:data[2],
                    pingjias:data[3],
                    blogs:data[4],
                    techs:data[5],
                })
            }
        })
        // res.render('admin/technology-list.html')
    }).get('/technology-add.html',function  (req,res) {
        res.render('admin/technology-add.html')
    }).get('/technology-del.html',function  (req,res) {
        res.render('admin/technology-del.html')
    }).get('/technology-edit.html',function  (req,res) {
        res.render('admin/technology-edit.html')
    }).get('/blog-list.html',function  (req,res) {
        connection.query('select * from banner_table;select * from intro_table;select * from msg_table;select * from pingjia_table;select * from blog_table',function  (err,data) {
            if (err) {
                console.log(err);
            } else{
                // res.send(data)
                res.render('admin/blog-list.html',{
                    banners:data[0],
                    intros:data[1],
                    msgs:data[2],
                    pingjias:data[3],
                    blogs:data[4],
                    techs:data[5],
                })
            }
        })
        // res.render('admin/blog-list.html')
    }).get('/blog-add.html',function  (req,res) {
        res.render('admin/blog-add.html')
    }).get('/blog-del.html',function  (req,res) {
        res.render('admin/blog-del.html')
    }).get('/blog-edit.html',function  (req,res) {
        res.render('admin/blog-edit.html')
    }).get('/msg-list.html',function  (req,res) {
        connection.query('select * from banner_table;select * from intro_table;select * from msg_table;select * from pingjia_table',function  (err,data) {
            if (err) {
                console.log(err);
            } else{
                // res.send(data)
                res.render('admin/msg-list.html',{
                    banners:data[0],
                    intros:data[1],
                    msgs:data[2],
                    pingjias:data[3],
                    blogs:data[4],
                    techs:data[5],
                })
            }
        })
        // res.render('admin/msg-list.html')
    }).get('/msg-add.html',function  (req,res) {
        res.render('admin/msg-add.html')
    }).get('/msg-del.html',function  (req,res) {
        res.render('admin/msg-del.html')
    }).get('/msg-edit.html',function  (req,res) {
        res.render('admin/msg-edit.html')
    }).get('/contact-list.html',function  (req,res) {
        res.render('admin/contact-list.html')
    }).get('/contact-add.html',function  (req,res) {
        res.render('admin/contact-add.html')
    }).get('/contact-del.html',function  (req,res) {
        res.render('admin/contact-del.html')
    }).get('/contact-edit.html',function  (req,res) {
        res.render('admin/contact-edit.html')
    }).get('/about-list.html',function  (req,res) {
        res.render('admin/about-list.html')
    }).get('/about-add.html',function  (req,res) {
        res.render('admin/about-add.html')
    }).get('/about-del.html',function  (req,res) {
        res.render('admin/about-del.html')
    }).get('/about-edit.html',function  (req,res) {
        res.render('admin/about-edit.html')
    })

//最后再匹配404
app.use(function  (req,res) {
    res.render('web/404.html')
})

//设置监听
app.listen(3000,function  () {
    console.log("server is running!")
})