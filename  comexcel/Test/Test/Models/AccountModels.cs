﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;

namespace Test.Models
{
    public class SystemUserModel
    {
        public Guid Id { get; set; } //ContactId
        [Required]
        [Display(Name = "FirstName")]
        public string FirstName { get; set; }

        [Required]
        [Display(Name = "LastName")]
        public string LastName { get; set; }

        public string FullName { get { return (FirstName ?? string.Empty) + " " + (LastName ?? string.Empty); } }

        [Required]
        [Display(Name = "Email")]
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }

        public Guid UserId { get; set; }

        [Required]
        [Display(Name = "Usename")]
        public string UserName { get; set; }

        [Required]
        [Display(Name = "Password")]
        public string Password { get; set; }
        public int PrivilegeLevel { get; set; }
        public bool IsSuspended { get; set; }


    }

    public class LoginModel
    {
        public string ID { get; set; }
        [Required]
        [Display(Name = "Usename")]
        public string UserName { get; set; }

        [Required]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [Required]
        [Display(Name = "IsActive")]
        public string IsActive { get; set; }

        public string Location { get; set; }
        [Required]
        [Display(Name = "Group")]
        public string Groups { get; set; }
        [Required]
        [Display(Name = "Useremail")]
        public string Useremail { get; set; }

    }

    public class SystemContact
    {
        public virtual string Id { get; set; }
        public virtual string FirstName { get; set; }
        public virtual string LastName { get; set; }
        public virtual string Email { get; set; }
        public virtual string Phone { get; set; }
        public virtual string Mobile { get; set; }
        public virtual SystemUser User { get; set; }
    }

    public class SystemUser
    {
        public virtual string Id { get; set; }
        public virtual string UserName { get; set; }
        public virtual string Password { get; set; }
        public virtual int PrivilegeLevel { get; set; }
        public virtual bool IsSuspended { get; set; }
        public virtual Guid CreatedBy { get; set; }
        public virtual DateTime CreatedDate { get; set; }
        public virtual Guid UpdatedBy { get; set; }
        public virtual DateTime UpdatedDate { get; set; }
    }
}
