<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
 border-color: blue;
  box-sizing: border-box;
}
.button {
  background-color: #8E0A86;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

/* Set a style for all buttons */
button {
  background-color:  #008CBA;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border-radius: 50px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
  opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}



/* Add padding to containers */
.container {
  padding: 16px;
}

/* The "Forgot password" text */
span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbtn {
    width: 100%;
  }
  .button3 {background-color: #f44336;}
  
}
h1 {text-align: center;}
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 10%;
  border-radius: 20%;
}
</style>
</head>
<body>
<form action="Login" method="post">

  <div class="container">
  <h1>Welcome to ICIN Banking Portal</h1>
  <div class="imgcontainer">
    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQMAAADCCAMA
    AAB6zFdcAAAB9VBMVEX///9YWFr8sED9zakAAACDVaOjfGQ6OjxgOBNQUFKSkpT9zKf//
    fn9zqvfj5HJMjfOU1DFIijYeXHVbWXCFR399vPBCBLJNzDEHSPmqqbSZmLUbG/GJCpeWGXOV1B2TCn2
    kVn+07LCERr8rjeljnT6qnisiHL8qzD8sUaOZ0ujdmD+7eB+T6D7vZ32lH9wTC1EREZhWVmYdLP/
    9+v9yJlhORT3mWT6s5X8vZNWLACecVShVUn92cR2Q5r9v2r8tE/+4r78t1z9xpJiNQCgQz/6sID35OFs
    NZT9yIL+2KfPz9BxcXKFZ0+srK1YQGvBwcJlSHv4powbEiH+5tPLrJH0hILe0cmTWjGLYEnkvZ7FrJ26
    nIuiZFPydXqZZ0aKSRVPRDz1jXvXyuFmaWz+2ar9zIiXwMrHxrmdiXwwsOYArvIAm9lyu9cnJyhjPR6S
    eGN40f15aF8mUF8/vvt6vNTipTxMOyFupL0uAAAAjcE7os8VcpRHM1VtRohVip9Rt+I6K0cGCwB7YHlOG
    QDjs407NC8tJyPVralPPkwSDBprUX4uITe7eXKMW1liS0TEp4ovKDM4FAA+AABxTjy1h13zeFzKmW6rfq
    zbt6MgFzYAACORICNfJpH0186bNDWoHiWijIqdAAeikLHEstTmrK2liL3p4e94rBgzAAAPnklEQVR4nO
    2bjV8TRxqAE7NJCJvVartWerZhGwQChEQJEL4CQQ0pEQEhkSSCWLXS1sDlrnfX6+m1XMGP1op3tdarcN
    br9f7Oe2dmN5lNdsOHeJmm8/zaZncT+8v75J133pldLRYOh8PhcDgcDofD4XA4HA6Hw+FwOBwOh8PhcD
    i/SNxdXdqBm3r5NTESj0avIwsjkWhktEt7+RXRFWnxHjjQ0jLijuIDb1Q9r/YX+z9yveUAZjiiHqgM/
    xoywT0Sj1wfmSkE7dUpONDyXrW/4KvHHfEiogdM8EbctV4Z3fEWs+hVWiPR+Ei1v+YrZWQ7BTgXWq7Xci5c34kDqArXq/1FXxHumfeuRbzbC8CpUJvTA3QELTvLApQII9X+uq+CLu8OU6CGHeywEmhjYaTa3/cV0DW8GwUgwRtvr/Z33m/aW3fnACwM15qE3eYBkhCtqS4BFgm7zgMojDPV/t77CFko795BDa2f3PG9GKgtBztaJBg5uFbtb75/XK+QBq3RSjkSr5mW2WAoeONk86RlVGwlBxGjLYWWSK1MDfoWcbgVfvyQEoqi11FJEiMwZURHlVGjhKiZBWS7LrpRMRSySaIkhfCrDf4NhUS4EEcrirJVRbW//P7QFdelgWiTbBC5Db2qkAMpFIlGI3G9gpaaqAhduqrnjRciL0OSJBChT4SWmigI+mpQQQECxoS+oRyu9tffD3QLBW+ksgKUDPpZxFsLfdKM/mcVt3NgkyK6ulgLuyl6B63bO7BJo3Sr4I1UO4KXx61bNLeGtndgkxT6z7TWQFW8RtfE6Lb1ABCVaI05cFPLhZbRogORHhai7oyui95otQPYD9qL8cShLxRxI4Aohi2JonpNdVS8D1ELNZFaNrbiLIAwxdBoPBKJDkdFNWQRjiPx+GhItGELUqigrSZuuxWL4jDqj0OwRGpBoEcu1I4J5b7Xi68eaI2EoFsUC2lQCwoscqHxQ83BaBzWTKOQBtFhcKPOElKo9cAwyoRRyITReEiiHPwi1wtyKiNbqF9PzQNvaytukNCaQELzHwwJbSigeoCuSIV3xQOtZF/BC/8neXyyvj6RqK+fGJerF9fOkbNznpScld0yQC7hejA8KoohslyEuW/ygxuiOvQ1C/DPjQ8mUZ1ERdMWEsXRYVRFLeMJ56qg4bw6yboGWfad9vgyvsA5zNLSjRisGOAX9YYkbYkMCj786OOPbpZ1BZ/D1c/TYtEJFMbhTFAoIVfPtAU5k+32eLpPe+r6NJZXUpb2SEtEKU6E4s3fWvK/+2hS3zaLH/ze8qPz40+ozymRP/xRi3wVKFiYqHagFUg5fB5w4Fmu0+gGG0uyewTVekXNA+XDP6Uefvrnm2q02svNz8YTn/7lQ0XNA/TpNRJ27tbUbczUrUfEgpXdVLhxGhR4lj2eOpq+QMoCaRDu6RFJdJ//9dzKuc/gFxfVAoEyX/zkM7j618+JErGnx28T0yjeL27b7benzgNT6OjWfaxlstqxmpAKeFR0Drr7ltsVm9TT2KPG9xSmATGdFovt8hpchQtw9Sm5JjY29ths6XUhd9s+9cV9dRisCl9P2e1f42M2JcSW+zQH9GDAmSDhqEh4fn8v4PeTM1FzIK7RlxsbG0WbsnjePpXTl8RVuISVMFkUVvrqujUJ3Sj2vr66PmIiIEnhooNpRG/RwRoeC/5ectmvOQhL0t/st0qnBRgcqoTxagdczo0vUdxIwJyvzeeb8zmAfl+gW+8AxdoJqBK0ZdKadnkaX1YdnLpQrgBSwT6FawJzEtzn0G8eaHOU0haoq1tOUw5wrBCtH99bCIfDqC9aK1zuRalBHKTvGSkQhEckPazVjrmUVB/Mg74yAwhfXd+GpNUD/xrtIHwCEZYoNb1+tSaK0gaKdD3f3KSRz2kScGGsr3bQJWQgDeYMFYCEPp8inUVVDqLr1Tkg0OnRq46FsKTkwcCGIlGk88L6IkQ/hUeDwFibAEMhYKLA4fB8uYYkqGOBqgeFjRORqgewkhAbz0rSrCDkFUXfUSsrQh7UXLDjNiFR7aj1wKg3Hgm4NNZ51kR1xSD2avOCHn9vcb5A+0qoO8iXGEAN9KKQvSMI58+zVxbl03XLpgocjkBfYEbdM9T6A0nRI9FtgzKi3L0nLJYpAD1NQn4FEuG2wFxFAAdm1QAx1xewyO0zakvgBwbL/heD6DLxJC0t3pm6IGwYOUgLd2ZRRSDTZhVCNUU+bTIpaFUxAB9yawkNlDtQxMLucvqOcP+r+zkDBfBeTkAOzrPXMu/IgWWQWhmX1nSZ2mZugmQ/b1ANsIPV9VkhrzlgqSruzEE75aA0ESg/I+vYwZLhDZkNYWVF2BBuEQdBhqZHqAfYATTJcwFtkgwE5uZ8PsqBhd5K0T+BOUOlAcr1+7eEJqmw/Vh8T8nnZoXsrOaApVUDyQNfIOBZhrUyUdDcXde97Al4fEUHVCLoJVAKbMpDzYHk70wmk71FA/7OB8I3D5uUDeEL1QFDy8eYjxoKvpJX5KA7hj83SEtQ2sn+s7tdoRU0odju3wMHV5LTMJMm5/1qKiSTD4SV5gdJ/4bw9QXWHMjNFYoBcdCMR66brnOiqAzOzMwMKvTdRilNgru32pTshL4hrSi9836i4OBKflZB5xurj+4LjBXFlLZe9AU89NIR1s4e4sDTlsKf7NJtpao9In0lvYhjW59NTyeVpofO9cWTSw1JVBqmk0v5h4vOxZX09JE0rBxYc+Dov9gPsc5lJv5O90qeVD2eL+b+MefIkI+26ySUoUyQ2NKSlBTTabWHTMJoUOZFcgZXITGUdcY6xYxjATvwffvtt7SDOTgnDhYcWfWz7WIFC2LXOA4N2mR/ElcBfDNqGkpjZxKfYlGd05K0wlg9UB20tV26dKmtOBjw+SU4n/vyYsGBpUsykyAqskXGewR5JdyIHIhP+h/Dp6fnRVsnOn/iWFhDw+K7s1ITY41iCjuAkAcGBooSiudzFy9qYwGQBw1TARpodHfRShycRQ6kJzcSdWuSbXqa5MVaZvLTxzAsOr/rIQ4YWjnGcD2AkM+cOTOAfvj+fpQWhXN4V62JhHalzAJMEuQecz1xcKJxHu239jv6wUESJgZpXpTg1PFEhNLQ2GPDDlzVideQTP8C7WDh8uXLC7QDKAe6JwncegtSsVmwTJB6cLbxSqeE1tl+v80/j4pA4VzsnW88oaywNS0AWUcbnQfqWBgYIOdtbdmyxl4eDGv32cSwUnybFMVZsecsdEjTaMcJ+gN0d942T879vfPhxrByh61pARFLVagHmZTB8ySDJ06cxZw4cYJaQcnqxCCGRJgMrly5kpzvlcLwWUgHdN4JfaMYImnAUEkkZNV5obkImSfasoZP1AziTWXwEA6H6VUk2Txe/P6uTeycB1AxIK2UH59f8duefp9nbsmESeHZsS1rkTXcWTiHapAy/Dx2cBY9iyHp1k9OEt7UP9N4E5raevSr58qjKbVVZmjpjNEWDdSPrg4K42+KHIRJ26NzYBVUliS00do72F5gsBfvus5qn8i92oj2AFk1tBUbAZQZgHEaIAdh7dkU2kFCi3A9Xbr12I73HKW89gnnqwnkZcjoY06RdVPG5NODPeFCc0D/3eZ6LUJhBe8xSsXEGsTnhTRg0YEqoT+bislyKotP2rIGn5PHJyfqM2JxhygzMTGpPXVWdCDM4jsSg5qEQfwnlBzTDrRMaFP/RVlQNieMTySsLpcrt1LcOZGWcnDFmphAGigH62myjMBp0kU2YPA2E8sOIP/p/YO25rJaMH416LIinPliGih5J77mCibGLVcFirRCVouwgMaNpaQsUu+yVxMxcoZykCmdEcYTRAAQDKYLDtLOoHrV5arXPY53p4lIUDtrZZZWwNY9Fh2ZhX7EQnkxnAgWFFhdubw2GJR8jrpuderCXNyQtMdXpdm8oIe1HqlA5vJFYOFiqQO5vhgpGgy5JbK7qCw5nfQb1pIHM9efhNB8EFpbXC1RwFyvXAAcLBj0BXJCp8DqcuZObqTT6ezJnFP/TqmEx6SnXis1wNqaiSJzGSsobZHrSwIFCUAQ/af0nRIJ4ACtMdPlDph7Hgcjx2LZBVIRs7EYVRMngqWBwjTgxBrK3rDqa8Jj0lAaOHCyVxBiDe8cP/riDFk4NJ95cfTwaw3k5oplsuy3JhpcxtethUbo/oUfmslfdEj/cOFCaUVgrSDIsQbEg2ckDZqePcDnJBmMIzXHhUNcvTV127559xpxsGm33z7PdEGIbcUwW/8awA4uPdMuQCpMmPzc5qDRcN4ODG1+Txzc3exA51P0U4tXqx21jq1Dh97EHHr+bMDR7Bh49ly7cGhLvrpbBVar8Og2CtneMTT2FElQ7GN2wheaAMb+ZsvW0cOHj6s8f/7s2bPnz7XTw4eP/rjrNLBa76H4ccxjm3efpu+ObWIj6NKtVWdigrlyGDt0lOLdFy9evEtfOLl7Bda3IeCxIVXC2NDmGBYyhpKh499M/f4qWw0V2UMaWK3ar47Hw5B2hF+H/lvtgMuRZXcFLJNGLcC2fKWFrZYB6qDjVLUjLufgsTcr8Y15oE7zt1QHQ5tq7IUD++bQ0PvVDrmU2GvHDptz/Ji5g2B5n1zgbW0c2EsO7EMMJsLW0Yq8YV4SnU7zRHjbXqTDXgprFWHrYGVMHQSNFkxFB9q8ANNB4UBtEjqYGwzbYNoh4TVThTzQZoPigTYgOn6qdlAl/OfwoYoY5AEsloJk2QgLx6Dh0kkbC+XzApMOjh6rhJEDZwkGs6fqYGiso+QAjQzmHDQcfaMSx43qQXA7BRXnBfYcbB2pjGFNDG6jQDcvlMFcTazcJrpNVo3Bygq2mRdYmxstR16rxDsmc2PBgfHb4KB8XhjSZFQ75DIaKhZFw3qwEwcVhsLP1Q65DPnYG7t34Co4MG6TSueFDmpeYG8oQCK89XoFjB0EzffWaQcd2vZR4QAcsJcGFotbrkDMtCYGiy+7GgsspgFMj++8ZYpJHmihQ8No4sBgXsA1kcFqgKlQFs1q4jbo5gXaAasKLO4jphL27MBkINhZ3E0kHDQdDi/loKNkXug4xa4CiyW2u5q4Ywd22gGzA0FFbnjrN0bs21joGDrF2jqhDDl2BN9oeFfH4T3XRLRIBtABfmXfAEbeajj4+jt69ujg1Cn7KRU4+Pmn95nsCkwo7Zj2Vg8SLNe+XZPYiwIXY/fVX5Ld33kHguz8nbX9QN7LvTZXTQ2FPSWCi7XHbF4agyeyKlNjIwEzmXDthgRzT1jsB/L4RP1OYewZGw6Hw+FwOBwOh8PhcDgcDofD4XA4HA6Hw+FwOBwOh8PhcDic3fI/1odn+hwtgLwAAAAASUVORK5CYII=" alt="Avatar" class="avatar">
  </div>
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" required>
	 <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
    <button type="submit">Login</button>
  </div>
</form>

<form action="Register.jsp" method="post">
<h3>New Customer?</h3>
<button class="button button3"type="submit">Register</button>
</form>

</body>
</html>