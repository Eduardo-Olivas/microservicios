package com.service.shopping.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.service.shopping.entity.InvoiceItem;

public interface InvoiceItemsRepository extends JpaRepository<InvoiceItem,Long> {
}
