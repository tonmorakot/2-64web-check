const { factors } = require("../models/index")

exports.read= async (req, res, next) => {
    try {

        const data = await factors.findAll();
        
        res.status(200).json({
            data: data,
            message: "read OK"
        })

    } catch (error) {
        console.log(error)
    }
}

// exports.all= async (req, res, next) => {
//     try {

//         const { text } = req.params;

//         const data = await disease.findAll({
//             where: {
//                 d_name: text
//             }
//         });
        
//         res.status(200).json({
//             data: data,
//             message: "read OK"
//         })

//     } catch (error) {
//         console.log(error)
//     }
// }

