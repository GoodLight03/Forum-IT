﻿using System.ComponentModel.DataAnnotations;

namespace ForumIT.Models.DTO
{
    public class RegisterDTO
    {
        [Required(ErrorMessage = "Field can't be empty")]
        [RegularExpression(@"^0\d{8,11}$", ErrorMessage = "Your Phone Number must start with 0 and have between 9 and 12 digits.")]
        public string FirstName { get; set; }
        [Required(ErrorMessage = "Field can't be empty")]
        public string LastName { get; set; }


        [Required(ErrorMessage = "Field can't be empty")]
        [ValidName(ErrorMessage = "Name Not Exit")]
        public string UserName { get; set; }


        [Required(ErrorMessage = "Field can't be empty")]
        [EmailAddress]
        public string Email { get; set; }


        [Required(ErrorMessage = "Field can't be empty")]
        //[RegularExpression(@"^(?=.*\d).{8,}$", ErrorMessage = "Your Pas must start with 8 digits and containt 1 number.")]
        [RegularExpression("^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*[#$^+=!*()@%&]).{6,}$", ErrorMessage = "Minimum length 6 and must contain  1 Uppercase,1 lowercase, 1 special character and 1 digit")]
        public string Password { get; set; }

        [Required(ErrorMessage = "Field can't be empty")]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "Confirm password does not match")]
        public string ConfirmPassword { get; set; }

        public string? Role { get; set; }
    }
}
