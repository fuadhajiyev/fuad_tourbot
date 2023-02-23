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


    @OneToMany(fetch = FetchType.EAGER)
    @JoinColumn(name = "question_id")
    private Set<Option> options;


    // one to many relationship with question translation
    @OneToMany(fetch = FetchType.EAGER,  mappedBy = "question")
    private List<QuestionTranslation> questionTranslations;
}
