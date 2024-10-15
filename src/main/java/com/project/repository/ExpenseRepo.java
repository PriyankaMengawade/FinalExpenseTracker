package com.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.project.model.Expense;

public interface ExpenseRepo extends JpaRepository<Expense, Integer>
{

	Expense deleteById(int  id);


	List<Expense> findByDescription(String description);


}
