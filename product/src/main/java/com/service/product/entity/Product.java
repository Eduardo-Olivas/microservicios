package com.service.product.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;
import com.service.product.entity.Category;

import javax.persistence.*;

import java.util.Date;

@Getter
@Setter
@Entity(name = "Product")
@Table(name = "tbl_products")
@Data
@AllArgsConstructor @NoArgsConstructor @Builder
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;

    private Double stock;
    private Double price;
    private String status;

    @Column(name = "create_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createAt;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    @JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
    private Category category;
}
