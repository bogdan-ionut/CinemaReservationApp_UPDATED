




-- Table: screening
CREATE TABLE screening (
    id int  NOT NULL,
    movie_id int  NOT NULL,
    auditorium_id int  NOT NULL,
    screening_start timestamp  NOT NULL,
    CONSTRAINT Projection_ak_1 UNIQUE (auditorium_id, screening_start) NOT DEFERRABLE,
      INITIALLY IMMEDIATE,
    CONSTRAINT screening_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: Projection_Movie (table: screening)
ALTER TABLE screening ADD CONSTRAINT Projection_Movie
    FOREIGN KEY (movie_id)
    REFERENCES movie (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Projection_Room (table: screening)
ALTER TABLE screening ADD CONSTRAINT Projection_Room
    FOREIGN KEY (auditorium_id)
    REFERENCES auditorium (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Reservation_Projection (table: reservation)
ALTER TABLE reservation ADD CONSTRAINT Reservation_Projection
    FOREIGN KEY (screening_id)
    REFERENCES screening (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Reservation_Reservation_type (table: reservation)
ALTER TABLE reservation ADD CONSTRAINT Reservation_Reservation_type
    FOREIGN KEY (reservation_type_id)
    REFERENCES reservation_type (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Reservation_paid_Employee (table: reservation)
ALTER TABLE reservation ADD CONSTRAINT Reservation_paid_Employee
    FOREIGN KEY (employee_paid_id)
    REFERENCES employee (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Reservation_reserving_employee (table: reservation)
ALTER TABLE reservation ADD CONSTRAINT Reservation_reserving_employee
    FOREIGN KEY (employee_reserved_id)
    REFERENCES employee (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Seat_Room (table: seat)
ALTER TABLE seat ADD CONSTRAINT Seat_Room
    FOREIGN KEY (auditorium_id)
    REFERENCES auditorium (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Seat_reserved_Reservation_projection (table: seat_reserved)
ALTER TABLE seat_reserved ADD CONSTRAINT Seat_reserved_Reservation_projection
    FOREIGN KEY (screening_id)
    REFERENCES screening (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Seat_reserved_Reservation_reservation (table: seat_reserved)
ALTER TABLE seat_reserved ADD CONSTRAINT Seat_reserved_Reservation_reservation
    FOREIGN KEY (reservation_id)
    REFERENCES reservation (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Seat_reserved_Seat (table: seat_reserved)
ALTER TABLE seat_reserved ADD CONSTRAINT Seat_reserved_Seat
    FOREIGN KEY (seat_id)
    REFERENCES seat (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

