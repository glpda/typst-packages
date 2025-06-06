#let custom-numbering(base: 1, depth: 4, first-level: "第一章 ", second-level: "第一节 ", third-level: "一、", fourth-level: "（一）", ..args) = {
  if (args.pos().len() > depth) {
    return
  }
  
  let level = args.pos().len()
  let current_num = args.pos().at(-1)
  
  if (level == 1) {
    if (first-level != "") {
      numbering(first-level, current_num)
    }
    return
  }
  
  if (level == 2) {
    if (second-level != "") {
      numbering(second-level, current_num)
    }
    return
  }
  
  if (level == 3) {
    if (third-level != "") {
      numbering(third-level, current_num)
    }
    return
  }
  
  if (level == 4) {
    if (fourth-level != "") {
      numbering(fourth-level, current_num)
    }
    return
  }
}