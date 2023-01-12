package by.step.hibernate.example.kornyshev.dao.models;



import javax.persistence.*;



    @Entity


public class Departments {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    @Column(name = "Building")
    private int building;
        @Column(name = "Financing")
        private double financing;
        @Column(name = "Namedep")
        private String namedep;
        @Column(name = "DoctorId")
        private int doctorId;


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "Doctorid", nullable = false)
    private Doctors doctors;

    public Departments () { }

        public Departments(int id, int building, double financing, String namedep, int doctorId) {
            this.id = id;
            this.building = building;
            this.financing = financing;
            this.namedep = namedep;
            this.doctorId = doctorId;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public int getBuilding() {
            return building;
        }

        public void setBuilding(int building) {
            this.building = building;
        }

        public double getFinancing() {
            return financing;
        }

        public void setFinancing(double financing) {
            this.financing = financing;
        }

        public String getName() {
            return namedep;
        }

        public void setName(String name) {
            this.namedep = name;
        }

        public int getDoctorId() {
            return doctorId;
        }

        public void setDoctorId(int doctorId) {
            this.doctorId = doctorId;
        }

        @Override
        public String toString() {
            return "Departments{" +
                    "id=" + id +
                    ", building=" + building +
                    ", financing=" + financing +
                    ", name='" + namedep + '\'' +
                    ", doctorId=" + doctorId +
                    '}';
        }
    }
