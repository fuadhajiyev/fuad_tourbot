package az.code.tourbot.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "options")
public class Option {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "option_text")
    private String option_text;

    @OneToMany(fetch = FetchType.EAGER)
    @JoinColumn(name = "option_id")
    private Set<OptionTranslation> optionTranslation;
}
