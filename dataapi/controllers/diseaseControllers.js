const { disease } = require("../models/index")

exports.read = async (req, res, next) => {
    
    try {

        const data = await disease.findAll();
        
        res.status(200).json({
             data: data,
            message: "read OK"
        })

    } catch (error) {
        console.log(error)
    }
}

exports.name = async (req, res, next) => {
    try {

        const { text } = req.params;

        const data = await disease.findOne({
            where: {  
               f_id: text
              }
        });
        
        res.status(200).json({
            data: data,
            message: "read OK"
        })

    } catch (error) {
        console.log(error)
    }
}


