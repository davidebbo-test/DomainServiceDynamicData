
namespace DomainServiceDynamicData
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    using System.ServiceModel.DomainServices.Hosting;
    using System.ServiceModel.DomainServices.Server;


    // The MetadataTypeAttribute identifies CategoryMetadata as the class
    // that carries additional metadata for the Category class.
    [MetadataTypeAttribute(typeof(Category.CategoryMetadata))]
    public partial class Category
    {

        // This class allows you to attach custom attributes to properties
        // of the Category class.
        //
        // For example, the following marks the Xyz property as a
        // required property and specifies the format for valid values:
        //    [Required]
        //    [RegularExpression("[A-Z][A-Za-z0-9]*")]
        //    [StringLength(32)]
        //    public string Xyz { get; set; }
        internal sealed class CategoryMetadata
        {

            // Metadata classes are not meant to be instantiated.
            private CategoryMetadata()
            {
            }

            public int CategoryID { get; set; }

            public string CategoryName { get; set; }

            public string Description { get; set; }

            public byte[] Picture { get; set; }

            public EntityCollection<Product> Products { get; set; }
        }
    }

    // The MetadataTypeAttribute identifies ProductMetadata as the class
    // that carries additional metadata for the Product class.
    [MetadataTypeAttribute(typeof(Product.ProductMetadata))]
    public partial class Product
    {

        // This class allows you to attach custom attributes to properties
        // of the Product class.
        //
        // For example, the following marks the Xyz property as a
        // required property and specifies the format for valid values:
        //    [Required]
        //    [RegularExpression("[A-Z][A-Za-z0-9]*")]
        //    [StringLength(32)]
        //    public string Xyz { get; set; }
        internal sealed class ProductMetadata
        {

            // Metadata classes are not meant to be instantiated.
            private ProductMetadata()
            {
            }

            public Category Category { get; set; }

            public Nullable<int> CategoryID { get; set; }

            public bool Discontinued { get; set; }

            public EntityCollection<Order_Detail> Order_Details { get; set; }

            public int ProductID { get; set; }

            public string ProductName { get; set; }

            public string QuantityPerUnit { get; set; }

            public Nullable<short> ReorderLevel { get; set; }

            public Supplier Supplier { get; set; }

            public Nullable<int> SupplierID { get; set; }

            public Nullable<decimal> UnitPrice { get; set; }

            public Nullable<short> UnitsInStock { get; set; }

            public Nullable<short> UnitsOnOrder { get; set; }
        }
    }
}
