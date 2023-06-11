CREATE DATABASE FoodStore;
USE FoodStore;

CREATE TABLE Food(
    FoodID varchar(50),
	FoodTitle varchar(200),
    Price double(12,2),
    Image varchar(128),
    PRIMARY KEY (FoodID)
);

CREATE TABLE Users(
    UserID int not null AUTO_INCREMENT,
    UserName varchar(128),
    Password varchar(16),
    PRIMARY KEY (UserID)
);

CREATE TABLE Customer (
	CustomerID int not null AUTO_INCREMENT,
    CustomerName varchar(128),
    CustomerPhone varchar(12),
    CustomerEmail varchar(200),
    CustomerAddress varchar(200),
    CustomerGender varchar(10),
    UserID int,
    PRIMARY KEY (CustomerID),
    CONSTRAINT FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE `Order`(
	OrderID int not null AUTO_INCREMENT,
    CustomerID int,
    FoodID varchar(50),
    DatePurchase datetime,
    Quantity int,
    TotalPrice double(12,2),
    Status varchar(1),
    PRIMARY KEY (OrderID),
    CONSTRAINT FOREIGN KEY (FoodID) REFERENCES Food(FoodID) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Cart(
	CartID int not null AUTO_INCREMENT,
    CustomerID int,
    FoodID varchar(50),
    Price double(12,2),
    Quantity int,
    TotalPrice double(12,2),
    PRIMARY KEY (CartID),
    CONSTRAINT FOREIGN KEY (FoodID) REFERENCES Food(FoodID) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE SET NULL ON UPDATE CASCADE
);


INSERT INTO `food` (`FoodID`, `FoodTitle`, `Price`, `Image`) VALUES
('F-001', 'Burger', 136.00, 'image/burger.jpg'),
('F-002', 'Pizza', 599.00, 'image/pizza.jpg'),
('F-003', 'Cookie', 200.00, 'image/cookie.jpg'),
('F-004', 'donut', 400.00, 'image/donut.jpg'),
('F-005', 'pancake', 650.00, 'image/pizza.jpg'),
('F-006', 'parfait', 399.00, 'image/parfait.jpg');