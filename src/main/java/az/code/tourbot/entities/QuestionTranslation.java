package az.code.tourbot.entities;

import az.code.tourbot.enums.LanguageCode;
import jakarta.persistence.*;
import lombok.*;


@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "question_translation")
public class QuestionTranslation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String text;

    @ManyToOne
    @JoinColumn(name = "question_id", referencedColumnName = "id")
    Question question;

    @Enumerated(EnumType.STRING)
    @Column(name = "language_code")
    private LanguageCode languageCode;
}
