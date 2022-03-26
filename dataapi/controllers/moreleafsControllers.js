const { moreleafs } = require("../models/index")

exports.read= async (req, res, next) => {
    try {

        const data = await moreleafs.findAll({
            attributes: ['ml_name'],
            
        });
        
        res.status(200).json({
            data: data,
            message: "read OK"
        })

    } catch (error) {
        console.log(error)
    }
}

exports.show = async (req, res, next) => {
    try {

        const { text } = req.params;

        const data = await moreleafs.findOne({
            where: {  
                id: text
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
