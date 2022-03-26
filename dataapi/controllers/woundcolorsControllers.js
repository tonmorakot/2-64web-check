const { woundcolors } = require("../models/index")

exports.read= async (req, res, next) => {
    try {

        const data = await woundcolors.findAll({
            attributes: ['wc_name'],
        });
        
        res.status(200).json({
            data: data,
            message: "read OK"
        })

    } catch (error) {
        console.log(error)
    }
}
