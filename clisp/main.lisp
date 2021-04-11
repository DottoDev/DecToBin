(write-line "Input the number you wanna convert into a binary number: ")
(setq decimalNumber (read))

(defvar lengthofbinary 0)

(loop (incf lengthofbinary)
      (when (< decimalnumber (expt 2 lengthOfBinary)) (return lengthofbinary))
      )


(loop
  (if
   (> ( expt 2 lengthOfBinary) decimalnumber)
   ( princ "0" )
   (princ "1")
   )
  (if
   (< ( expt 2 lengthOfBinary) decimalnumber)
   (decf decimalnumber (expt 2 lengthOfBinary))
   )
  (decf lengthofbinary)
  (when (< lengthofbinary 0) (return ( lengthofbinary + 1)))
  )
