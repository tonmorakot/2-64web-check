const { woundonleafs } = require("../models/index")

exports.read= async (req, res, next) => {
    try {

        const data = await woundonleafs.findAll({
            attributes: ['wol_name'],
        });
        
        res.status(200).json({
            data: data,
            message: "read OK"
        })

    } catch (error) {
        console.log(error)
    }
}
