package com.cartelera.infocarteapi.model;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import lombok.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.*;

@Getter
@Setter
@Entity
@NoArgsConstructor
@Table(name = "users", uniqueConstraints = {
  @UniqueConstraint(columnNames = {
    "username"
  }),
})
@JsonIdentityInfo(
  generator = ObjectIdGenerators.PropertyGenerator.class,
  property = "id")
public class User {
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

  @Column
  private String username;

  @Column
  private String password;

  @Column
  private String name;

  @Column
  private String lastname;

  @Column
  private boolean active;

  private Date created_at;

  private Date updated_at;

  @PrePersist
  protected void onCreate() {
    created_at = new Date();
  }

  @PreUpdate
  protected void onUpdate() {
    updated_at = new Date();
  }

  @ManyToMany(cascade = {
    CascadeType.PERSIST,
    CascadeType.MERGE
  })
  @JoinTable(
    name = "users_roles",
    joinColumns = {@JoinColumn(name = "user_id", referencedColumnName = "id")},
    inverseJoinColumns = {@JoinColumn(name = "role_id", referencedColumnName = "id")}
  )
  private Set<Role> roles;

  @OneToMany(mappedBy = "created_by")
  private List<Billboard> createdBillboard = new ArrayList<Billboard>();

  @ManyToMany(cascade = {CascadeType.ALL})
  @JoinTable(
    name = "followed_billboards",
    joinColumns = {@JoinColumn(name = "user_id")},
    inverseJoinColumns = {@JoinColumn(name = "billboard_id")}
  )
  private List<Billboard> followedBillboards = new ArrayList<Billboard>();

  @ManyToMany(cascade = {CascadeType.ALL})
  @JoinTable(
    name = "liked_billboards",
    joinColumns = {@JoinColumn(name = "user_id")},
    inverseJoinColumns = {@JoinColumn(name = "billboard_id")}
  )
  private List<Billboard> likedBillboards = new ArrayList<Billboard>();

  @OneToMany(mappedBy="user")
  private Set<Post> posts;

  @OneToMany(mappedBy="user")
  private Set<Comment> comments;

  public <T> User(String username, String password, Set<Role> roles, boolean active, String name, String lastname) {
    this.username = username;
    this.password = password;
    this.roles = roles;
    this.active = active;
    this.name = name;
    this.lastname = lastname;
  }
}
