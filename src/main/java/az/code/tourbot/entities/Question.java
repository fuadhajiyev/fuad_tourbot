package az.code.tourbot.entities;


import az.code.tourbot.enums.QuestionType;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "questions")
public class Question implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String text;

    @Enumerated(EnumType.STRING)
    private QuestionType questionType;


    @OneToMany (fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
    @JoinColumn(name = "question_id", referencedColumnName = "id")
    private Set<Option> options;


    // one to may relationship with question translation
    @OneToMany (fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
    @JoinColumn(name = "question_id", referencedColumnName = "id")
    private List<QuestionTranslation> questionTranslations;
}
