# Seating

### Aggregate Roots (Actors)

#### Seat
single seat, knows whether the seat is occupied or not

#### Room
knows which seat is in which room
aggregates the occupancy of the seats in a room
knows the occupancy thresholds for reporting
