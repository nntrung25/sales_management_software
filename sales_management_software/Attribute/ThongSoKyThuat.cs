//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace sales_management_software
{
    using System;
    using System.Collections.Generic;
    
    public partial class ThongSoKyThuat
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ThongSoKyThuat()
        {
            this.BoThongSoes = new HashSet<BoThongSo>();
            this.ChiTietThongSoKyThuats = new HashSet<ChiTietThongSoKyThuat>();
        }
    
        public string MaTS { get; set; }
        public string TenTS { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BoThongSo> BoThongSoes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietThongSoKyThuat> ChiTietThongSoKyThuats { get; set; }
    }
}
