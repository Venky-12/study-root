import 'package:get/get.dart';
import 'package:project_1/It/it_1/controllers/it1_questions_controller.dart';
import 'package:project_1/It/it_1/it_sem_1.dart';
import 'package:project_1/It/it_1/screens/it1_result_screen.dart';
import 'package:project_1/It/it_2/it_sem_2.dart';
import 'package:project_1/It/it_3/controllers/it3_qpc.dart';
import 'package:project_1/It/it_3/controllers/it3_questions_controller.dart';
import 'package:project_1/It/it_3/it_sem_3.dart';
import 'package:project_1/It/it_3/screens/it3_test_overview_screen.dart';
import 'package:project_1/It/it_4/controllers/it4_questions_controller.dart';
import 'package:project_1/It/it_4/it_sem_4.dart';
import 'package:project_1/It/it_5/it_sem_5.dart';
import 'package:project_1/It/it_6/it_sem_6.dart';
import 'package:project_1/It/it_7/it_sem_7.dart';
import 'package:project_1/It/it_8/screens/it8_result_screen.dart';
import 'package:project_1/cse/cse_2/cse_sem2.dart';
import 'package:project_1/cse/cse_1/controllers/cse1_questions_controller.dart';
import 'package:project_1/cse/cse_1/controllers/cse_1_qpc.dart';
import 'package:project_1/controllers/question_papers/question_paper_controller.dart';
import 'package:project_1/controllers/question_papers/questions_controller.dart';
import 'package:project_1/cse/cse_3/cse_sem3.dart';
import 'package:project_1/cse/cse_5/controllers/cse_5_qpc.dart';
import 'package:project_1/cse/cse_5/cse_sem5.dart';
import 'package:project_1/cse/cse_6/cse_sem6.dart';
import 'package:project_1/cse/cse_6/screens/cse_6_result_screen.dart';
import 'package:project_1/cse/cse_7/controller/cse_7_qpc.dart';
import 'package:project_1/cse/cse_7/controller/cse_7_questions_controller.dart';
import 'package:project_1/cse/cse_7/cse_sem7.dart';
import 'package:project_1/cse/cse_7/screens/cse7_questions_screen.dart';
import 'package:project_1/cse/cse_7/screens/cse_7_answer_check_screen.dart';
import 'package:project_1/cse/cse_7/screens/cse_7_result_screen.dart';
import 'package:project_1/cse/cse_7/screens/cse_7_test_overview_screen.dart';
import 'package:project_1/cse/cse_8/controller/cse_8_qpc.dart';
import 'package:project_1/cse/cse_8/controller/cse_8_questions_controller.dart';
import 'package:project_1/cse/cse_8/cse_sem8.dart';
import 'package:project_1/cse/cse_8/screens/cse8_questions_screen.dart';
import 'package:project_1/cse/cse_8/screens/cse_8_answer_chedck_screen.dart';
import 'package:project_1/cse/cse_8/screens/cse_8_result_screen.dart';
import 'package:project_1/cse/cse_8/screens/cse_8_test_overview_screen.dart';
import 'package:project_1/ece/ece_2/ece_sem_2.dart';
import 'package:project_1/ece/ece_3/controllers/ece3_questions_controller.dart';
import 'package:project_1/ece/ece_3/ece_sem_3.dart';
import 'package:project_1/ece/ece_4/ece_sem_4.dart';
import 'package:project_1/ece/ece_4/screens/ece4_test_overview_screen.dart';
import 'package:project_1/ece/ece_5/ece_sem_5.dart';
import 'package:project_1/ece/ece_7/ece_sem_7.dart';
import 'package:project_1/ece/ece_7/screens/ece7_test_overview_screen.dart';
import 'package:project_1/ece/ece_8/ece_sem_8.dart';
import 'package:project_1/eee/eee_1/eee_sem_1.dart';
import 'package:project_1/eee/eee_2/eee_sem_2.dart';
import 'package:project_1/eee/eee_3/controllers/eee3_qpc.dart';
import 'package:project_1/eee/eee_3/eee_sem_3.dart';
import 'package:project_1/eee/eee_3/screens/eee3_answer_check_screen.dart';
import 'package:project_1/eee/eee_3/screens/eee3_result_screen.dart';
import 'package:project_1/eee/eee_3/screens/eee3_test_overview_screen.dart';
import 'package:project_1/eee/eee_4/controllers/eee4_qpc.dart';
import 'package:project_1/eee/eee_4/controllers/eee4_questions_controller.dart';
import 'package:project_1/eee/eee_4/eee_sem_4.dart';
import 'package:project_1/eee/eee_4/screens/eee4_answer_check_screen.dart';
import 'package:project_1/eee/eee_4/screens/eee4_question_screen.dart';
import 'package:project_1/eee/eee_4/screens/eee4_result_screen.dart';
import 'package:project_1/eee/eee_4/screens/eee4_test_overview_screen.dart';
import 'package:project_1/eee/eee_5/eee_sem_5.dart';
import 'package:project_1/eee/eee_6/controllers/eee6_qpc.dart';
import 'package:project_1/eee/eee_6/controllers/eee6_questions_controller.dart';
import 'package:project_1/eee/eee_6/eee_sem_6.dart';
import 'package:project_1/eee/eee_6/screens/eee6_answer_check_screen.dart';
import 'package:project_1/eee/eee_6/screens/eee6_question_screen.dart';
import 'package:project_1/eee/eee_6/screens/eee6_result_screen.dart';
import 'package:project_1/eee/eee_6/screens/eee6_test_overview_screen.dart';
import 'package:project_1/eee/eee_7/eee_sem_7.dart';
import 'package:project_1/eee/eee_8/eee_sem_8.dart';
import 'package:project_1/eee/eee_8/screens/eee8_answer_check_screen.dart';
import 'package:project_1/screens/Introduction/introduction.dart';
import 'package:project_1/cse/cse_1/screens/cse1_questions_screen.dart';
import 'package:project_1/cse/cse_1/screens/cse1_result_screen.dart';
import 'package:project_1/cse/cse_1/screens/cse1_testoverview_screen.dart';
import 'package:project_1/cse/cse_1/cse_sem1.dart';
import 'package:project_1/screens/home_screen.dart';
import 'package:project_1/screens/options_screen.dart';
import 'package:project_1/screens/question/answer_check_screen.dart';
import 'package:project_1/screens/question/question_screen.dart';
import 'package:project_1/screens/result_screen.dart';
import 'package:project_1/screens/splash/splash_screen.dart';
import 'package:project_1/screens/subjects.dart';
import 'package:project_1/screens/test_overview_screen.dart';
import 'package:project_1/services/auth_page.dart';
import '../It/it_1/controllers/it1_qpc.dart';
import '../It/it_1/screens/it1_answer_check_screen.dart';
import '../It/it_1/screens/it1_question_screen.dart';
import '../It/it_1/screens/it1_test_overview_screen.dart';
import '../It/it_2/controllers/it2_qpc.dart';
import '../It/it_2/controllers/it2_questions_controller.dart';
import '../It/it_2/screens/it2_answer_check_screen.dart';
import '../It/it_2/screens/it2_question_screen.dart';
import '../It/it_2/screens/it2_result_screen.dart';
import '../It/it_2/screens/it2_test_overview_screen.dart';
import '../It/it_3/screens/it3_answer_check_screen.dart';
import '../It/it_3/screens/it3_question_screen.dart';
import '../It/it_3/screens/it3_result_screen.dart';
import '../It/it_4/controllers/it4_qpc.dart';
import '../It/it_4/screens/it4_answer_check_screen.dart';
import '../It/it_4/screens/it4_question_screen.dart';
import '../It/it_4/screens/it4_result_screen.dart';
import '../It/it_4/screens/it4_test_overview_screen.dart';
import '../It/it_5/controllers/it5_qpc.dart';
import '../It/it_5/controllers/it5_questions_controller.dart';
import '../It/it_5/screens/it5_answer_check_screen.dart';
import '../It/it_5/screens/it5_question_screen.dart';
import '../It/it_5/screens/it5_result_screen.dart';
import '../It/it_5/screens/it5_test_overview_screen.dart';
import '../It/it_6/controllers/it6_qpc.dart';
import '../It/it_6/controllers/it6_questions_controller.dart';
import '../It/it_6/screens/it6_answer_check_screen.dart';
import '../It/it_6/screens/it6_question_screen.dart';
import '../It/it_6/screens/it6_result_screen.dart';
import '../It/it_6/screens/it6_test_overview_screen.dart';
import '../It/it_7/controllers/it7_qpc.dart';
import '../It/it_7/controllers/it7_questions_controller.dart';
import '../It/it_7/screens/it7_answer_check_screen.dart';
import '../It/it_7/screens/it7_question_screen.dart';
import '../It/it_7/screens/it7_result_screen.dart';
import '../It/it_7/screens/it7_test_overview_screen.dart';
import '../It/it_8/controllers/it8_qpc.dart';
import '../It/it_8/controllers/it8_questions_controller.dart';
import '../It/it_8/it_sem_8.dart';
import '../It/it_8/screens/it8_answer_check_screen.dart';
import '../It/it_8/screens/it8_question_screen.dart';
import '../It/it_8/screens/it8_test_overview_screen.dart';
import '../cse/cse_2/controllers/cse2_questions_controller.dart';
import '../cse/cse_2/controllers/cse_2_qpc.dart';
import '../cse/cse_2/screens/cse2_answer_check_screen.dart';
import '../cse/cse_2/screens/cse2_question_screen.dart';
import '../cse/cse_2/screens/cse2_result_screen.dart';
import '../cse/cse_2/screens/cse2_test_over_screen.dart';
import '../cse/cse_1/screens/cse1_answer_check_screen.dart';
import '../cse/cse_3/controllers/cse3_questions_controller.dart';
import '../cse/cse_3/controllers/cse_3_qpc.dart';
import '../cse/cse_3/screens/cse3_answer_check_screen.dart';
import '../cse/cse_3/screens/cse3_questions_screen.dart';
import '../cse/cse_3/screens/cse3_result_screen.dart';
import '../cse/cse_3/screens/cse3_test_over_screen.dart';
import '../cse/cse_4/controllers/cse4_questions_controller.dart';
import '../cse/cse_4/controllers/cse_4_qpc.dart';
import '../cse/cse_4/cse_sem4.dart';
import '../cse/cse_4/screens/cse4_answer_check_screen.dart';
import '../cse/cse_4/screens/cse4_questions_screen.dart';
import '../cse/cse_4/screens/cse4_result_screen.dart';
import '../cse/cse_4/screens/cse4_test_overview_screen.dart';
import '../cse/cse_5/controllers/cse5_questions_controller.dart';
import '../cse/cse_5/screens/cse5_answer_check_screen.dart';
import '../cse/cse_5/screens/cse5_questions_screen.dart';
import '../cse/cse_5/screens/cse5_result_screen.dart';
import '../cse/cse_5/screens/cse5_test_overview_screen.dart';
import '../cse/cse_6/controllers/cse_6_qpc.dart';
import '../cse/cse_6/controllers/cse_6_questions_controller.dart';
import '../cse/cse_6/screens/cse6_questions_screen.dart';
import '../cse/cse_6/screens/cse_6_answer_check_screen.dart';
import '../cse/cse_6/screens/cse_6_test_overview_screen.dart';
import '../ece/ece_1/controllers/ece1_qpc.dart';
import '../ece/ece_1/controllers/ece1_questions_controller.dart';
import '../ece/ece_1/ece_sem_1.dart';
import '../ece/ece_1/screens/ece1_answer_check_screen.dart';
import '../ece/ece_1/screens/ece1_question_screen.dart';
import '../ece/ece_1/screens/ece1_result_screen.dart';
import '../ece/ece_1/screens/ece1_test_overview_screen.dart';
import '../ece/ece_2/controllers/ece2_qpc.dart';
import '../ece/ece_2/controllers/ece2_questions_controller.dart';
import '../ece/ece_2/screens/ece2_answer_check_screen.dart';
import '../ece/ece_2/screens/ece2_question_screen.dart';
import '../ece/ece_2/screens/ece2_result_screen.dart';
import '../ece/ece_2/screens/ece2_test_overview_screen.dart';
import '../ece/ece_3/controllers/ece3_qpc.dart';
import '../ece/ece_3/screens/ece3_answer_check_screen.dart';
import '../ece/ece_3/screens/ece3_question_screen.dart';
import '../ece/ece_3/screens/ece3_result_screen.dart';
import '../ece/ece_3/screens/ece3_test_overview_screen.dart';
import '../ece/ece_4/controllers/ece4_qpc.dart';
import '../ece/ece_4/controllers/ece_4_questions_controller.dart';
import '../ece/ece_4/screens/ece4_answer_check_screen.dart';
import '../ece/ece_4/screens/ece4_question_screen.dart';
import '../ece/ece_4/screens/ece4_result_screen.dart';
import '../ece/ece_5/controllers/ece5_qpc.dart';
import '../ece/ece_5/controllers/ece5_questions_controller.dart';
import '../ece/ece_5/screens/ece5_answer_check_screen.dart';
import '../ece/ece_5/screens/ece5_question_screen.dart';
import '../ece/ece_5/screens/ece5_result_screen.dart';
import '../ece/ece_5/screens/ece5_test_overview_screen.dart';
import '../ece/ece_6/controllers/ece_6_qpc.dart';
import '../ece/ece_6/controllers/ece_6_questions_controller.dart';
import '../ece/ece_6/ece_sem_6.dart';
import '../ece/ece_6/screens/ece6_answer_check_screen.dart';
import '../ece/ece_6/screens/ece6_questions_screen.dart';
import '../ece/ece_6/screens/ece6_result_screen.dart';
import '../ece/ece_6/screens/ece6_test_overview_screen.dart';
import '../ece/ece_7/controllers/ece7_qpc.dart';
import '../ece/ece_7/controllers/ece7_questions_controller.dart';
import '../ece/ece_7/screens/ece7_answer_check_screen.dart';
import '../ece/ece_7/screens/ece7_question_screen.dart';
import '../ece/ece_7/screens/ece7_result_screen.dart';
import '../ece/ece_8/controllers/ece8_qpc.dart';
import '../ece/ece_8/controllers/ece8_questions_controller.dart';
import '../ece/ece_8/screens/ece8_answer_check_screen.dart';
import '../ece/ece_8/screens/ece8_questions_screen.dart';
import '../ece/ece_8/screens/ece8_result_screen.dart';
import '../ece/ece_8/screens/ece8_test_overview_screen.dart';
import '../eee/eee_1/controllers/eee1_qpc.dart';
import '../eee/eee_1/controllers/eee1_questions_controller.dart';
import '../eee/eee_1/screens/eee1_answer_check_screen.dart';
import '../eee/eee_1/screens/eee1_question_screen.dart';
import '../eee/eee_1/screens/eee1_result_screen.dart';
import '../eee/eee_1/screens/eee1_test_overview_screen.dart';
import '../eee/eee_2/controllers/eee2_qpc.dart';
import '../eee/eee_2/controllers/eee2_questions_controller.dart';
import '../eee/eee_2/screens/eee2_answer_check_screen.dart';
import '../eee/eee_2/screens/eee2_question_screen.dart';
import '../eee/eee_2/screens/eee2_result_screen.dart';
import '../eee/eee_2/screens/eee2_test_overview_screen.dart';
import '../eee/eee_3/controllers/eee3_questions_controller.dart';
import '../eee/eee_3/screens/eee3_question_screen.dart';
import '../eee/eee_5/controllers/eee5_qpc.dart';
import '../eee/eee_5/controllers/eee5_questions_controller.dart';
import '../eee/eee_5/screens/eee5_answer_check_screen.dart';
import '../eee/eee_5/screens/eee5_question_screen.dart';
import '../eee/eee_5/screens/eee5_result_screen.dart';
import '../eee/eee_5/screens/eee5_test_overview_screen.dart';
import '../eee/eee_7/controllers/eee7_qpc.dart';
import '../eee/eee_7/controllers/eee7_questions_controller.dart';
import '../eee/eee_7/screens/eee7_answer_check_screen.dart';
import '../eee/eee_7/screens/eee7_question_screen.dart';
import '../eee/eee_7/screens/eee7_result_screen.dart';
import '../eee/eee_7/screens/eee7_test_overview_screen.dart';
import '../eee/eee_8/controllers/eee8_qpc.dart';
import '../eee/eee_8/controllers/eee8_questions_controller.dart';
import '../eee/eee_8/screens/eee8_question_screen.dart';
import '../eee/eee_8/screens/eee8_result_screen.dart';
import '../eee/eee_8/screens/eee8_test_overview_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          name: "/",
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: "/authpage",
          page: () => const AuthPage(),
        ),
        GetPage(
          name: "/introduction",
          page: () => const AppIntroductionScreen(),
        ),
        GetPage(
          name: "/homescreen",
          page: () => HomeScreen(),
        ),
        GetPage(
            name: "/subjects",
            page: () => const Subjects(),
            binding: BindingsBuilder(
              () {
                Get.put(QuestionPaperController());
              },
            )),
        GetPage(
            name: QuestionScreen.routeName,
            page: () => const QuestionScreen(),
            binding: BindingsBuilder((() {
              Get.put<QuestionsController>(QuestionsController());
            }))),
        GetPage(
            name: TestOverviewScreen.routeName,
            page: () => const TestOverviewScreen(),
            binding: BindingsBuilder((() {
              Get.put<QuestionsController>(QuestionsController());
            }))),

        GetPage(name: ResultScreen.routeName, page: () => const ResultScreen()),
        GetPage(
            name: AnswerCheckScreen.routeName,
            page: () => const AnswerCheckScreen()),
        GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
        GetPage(name: Subjects.routeName, page: (() => const Subjects())),
        GetPage(name: OptionsScreen.routeName, page: () => OptionsScreen()),

        //cse-1 routes
        GetPage(
            name: "/cse1questionsscreen",
            page: () => Cse1QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Cse1QuestionsController>(Cse1QuestionsController());
            }))),
        GetPage(
            name: "/cse_sem1",
            page: () => const CseSem1(),
            binding: BindingsBuilder(
              () {
                Get.put(CSE1QPC());
              },
            )),
        GetPage(
            name: Cse1TestOverviewScreen.routeName,
            page: () => const Cse1TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Cse1QuestionsController>(Cse1QuestionsController());
              },
            )),
        GetPage(
            name: Cse1ResultScreen.routeName,
            page: () => const Cse1ResultScreen()),
        GetPage(
            name: Cse1AnswerCheckScreen.routeName,
            page: () => const Cse1AnswerCheckScreen()),
        GetPage(name: CseSem1.routeName, page: (() => const CseSem1())),

        //cse-2 routes

        GetPage(
            name: "/cse_sem2",
            page: () => const CseSem2(),
            binding: BindingsBuilder(
              () {
                Get.put(CSE2QPC());
              },
            )),
        GetPage(
            name: "/cse2questionsscreen",
            page: () => Cse2QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Cse2QuestionsController>(Cse2QuestionsController());
            }))),
        GetPage(
            name: Cse2TestOverviewScreen.routeName,
            page: () => const Cse2TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Cse2QuestionsController>(Cse2QuestionsController());
              },
            )),
        GetPage(
            name: Cse2ResultScreen.routeName,
            page: () => const Cse2ResultScreen()),
        GetPage(
            name: Cse2AnswerCheckScreen.routeName,
            page: () => const Cse2AnswerCheckScreen()),
        GetPage(name: CseSem2.routeName, page: (() => const CseSem2())),

        //cse-3 routes

        GetPage(
            name: "/cse_sem3",
            page: () => const CseSem3(),
            binding: BindingsBuilder(
              () {
                Get.put(CSE3QPC());
              },
            )),
        GetPage(
            name: "/cse3questionsscreen",
            page: () => const Cse3QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Cse3QuestionsController>(Cse3QuestionsController());
            }))),
        GetPage(
            name: Cse3TestOverviewScreen.routeName,
            page: () => const Cse3TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Cse3QuestionsController>(Cse3QuestionsController());
              },
            )),
        GetPage(
            name: Cse3ResultScreen.routeName,
            page: () => const Cse3ResultScreen()),
        GetPage(
            name: Cse3AnswerCheckScreen.routeName,
            page: () => const Cse3AnswerCheckScreen()),
        GetPage(name: CseSem3.routeName, page: (() => const CseSem3())),

        //cse-4 routes

        GetPage(
            name: "/cse_sem4",
            page: () => const CseSem4(),
            binding: BindingsBuilder(
              () {
                Get.put(CSE4QPC());
              },
            )),
        GetPage(
            name: "/cse4questionsscreen",
            page: () => const Cse4QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Cse4QuestionsController>(Cse4QuestionsController());
            }))),
        GetPage(
            name: Cse4TestOverviewScreen.routeName,
            page: () => const Cse4TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Cse4QuestionsController>(Cse4QuestionsController());
              },
            )),
        GetPage(
            name: Cse4ResultScreen.routeName,
            page: () => const Cse4ResultScreen()),
        GetPage(
            name: Cse4AnswerCheckScreen.routeName,
            page: () => const Cse4AnswerCheckScreen()),
        GetPage(name: CseSem4.routeName, page: (() => const CseSem4())),

        //cse-5 routes

        GetPage(
            name: "/cse_sem5",
            page: () => const CseSem5(),
            binding: BindingsBuilder(
              () {
                Get.put(CSE5QPC());
              },
            )),
        GetPage(
            name: "/cse5questionsscreen",
            page: () => const Cse5QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Cse5QuestionsController>(Cse5QuestionsController());
            }))),
        GetPage(
            name: Cse5TestOverviewScreen.routeName,
            page: () => const Cse5TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Cse5QuestionsController>(Cse5QuestionsController());
              },
            )),
        GetPage(
            name: Cse5ResultScreen.routeName,
            page: () => const Cse5ResultScreen()),
        GetPage(
            name: Cse5AnswerCheckScreen.routeName,
            page: () => const Cse5AnswerCheckScreen()),
        GetPage(name: CseSem5.routeName, page: (() => const CseSem5())),

        //cse-6 routes

        GetPage(
            name: "/cse_sem6",
            page: () => const CseSem6(),
            binding: BindingsBuilder(
              () {
                Get.put(CSE6QPC());
              },
            )),
        GetPage(
            name: "/cse6questionsscreen",
            page: () => const Cse6QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Cse6QuestionsController>(Cse6QuestionsController());
            }))),
        GetPage(
            name: Cse6TestOverviewScreen.routeName,
            page: () => const Cse6TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Cse6QuestionsController>(Cse6QuestionsController());
              },
            )),
        GetPage(
            name: Cse6ResultScreen.routeName,
            page: () => const Cse6ResultScreen()),
        GetPage(
            name: Cse6AnswerCheckScreen.routeName,
            page: () => const Cse6AnswerCheckScreen()),
        GetPage(name: CseSem6.routeName, page: (() => const CseSem6())),

        //cse-7 routes

        GetPage(
            name: "/cse_sem7",
            page: () => const CseSem7(),
            binding: BindingsBuilder(
              () {
                Get.put(CSE7QPC());
              },
            )),
        GetPage(
            name: "/cse7questionsscreen",
            page: () => const Cse7QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Cse7QuestionsController>(Cse7QuestionsController());
            }))),
        GetPage(
            name: Cse7TestOverviewScreen.routeName,
            page: () => const Cse7TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Cse7QuestionsController>(Cse7QuestionsController());
              },
            )),
        GetPage(
            name: Cse7ResultScreen.routeName,
            page: () => const Cse7ResultScreen()),
        GetPage(
            name: Cse7AnswerCheckScreen.routeName,
            page: () => const Cse7AnswerCheckScreen()),
        GetPage(name: CseSem7.routeName, page: (() => const CseSem7())),

        //cse-8 routes

        GetPage(
            name: "/cse_sem8",
            page: () => const CseSem8(),
            binding: BindingsBuilder(
              () {
                Get.put(CSE8QPC());
              },
            )),
        GetPage(
            name: "/cse8questionsscreen",
            page: () => const Cse8QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Cse8QuestionsController>(Cse8QuestionsController());
            }))),
        GetPage(
            name: Cse8TestOverviewScreen.routeName,
            page: () => const Cse8TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Cse8QuestionsController>(Cse8QuestionsController());
              },
            )),
        GetPage(
            name: Cse8ResultScreen.routeName,
            page: () => const Cse8ResultScreen()),
        GetPage(
            name: Cse8AnswerCheckScreen.routeName,
            page: () => const Cse8AnswerCheckScreen()),
        GetPage(name: CseSem8.routeName, page: (() => const CseSem8())),

        //ece-1 routes

        GetPage(
            name: "/ece_sem1",
            page: () => const EceSem1(),
            binding: BindingsBuilder(
              () {
                Get.put(ECE1QPC());
              },
            )),
        GetPage(
            name: "/ece1questionsscreen",
            page: () => const Ece1QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Ece1QuestionsController>(Ece1QuestionsController());
            }))),
        GetPage(
            name: Ece1TestOverviewScreen.routeName,
            page: () => const Ece1TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Ece1QuestionsController>(Ece1QuestionsController());
              },
            )),
        GetPage(
            name: Ece1ResultScreen.routeName,
            page: () => const Ece1ResultScreen()),
        GetPage(
            name: Ece1AnswerCheckScreen.routeName,
            page: () => const Ece1AnswerCheckScreen()),
        GetPage(name: EceSem1.routeName, page: (() => const EceSem1())),

        //ece-2 routes

        GetPage(
            name: "/ece_sem2",
            page: () => const EceSem2(),
            binding: BindingsBuilder(
              () {
                Get.put(ECE2QPC());
              },
            )),
        GetPage(
            name: "/ece2questionsscreen",
            page: () => const Ece2QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Ece2QuestionsController>(Ece2QuestionsController());
            }))),
        GetPage(
            name: Ece2TestOverviewScreen.routeName,
            page: () => const Ece2TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Ece2QuestionsController>(Ece2QuestionsController());
              },
            )),
        GetPage(
            name: Ece2ResultScreen.routeName,
            page: () => const Ece2ResultScreen()),
        GetPage(
            name: Ece2AnswerCheckScreen.routeName,
            page: () => const Ece2AnswerCheckScreen()),
        GetPage(name: EceSem2.routeName, page: (() => const EceSem2())),

        //ece-3 routes

        GetPage(
            name: "/ece_sem3",
            page: () => const EceSem3(),
            binding: BindingsBuilder(
              () {
                Get.put(ECE3QPC());
              },
            )),
        GetPage(
            name: "/ece3questionsscreen",
            page: () => const Ece3QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Ece3QuestionsController>(Ece3QuestionsController());
            }))),
        GetPage(
            name: Ece3TestOverviewScreen.routeName,
            page: () => const Ece3TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Ece3QuestionsController>(Ece3QuestionsController());
              },
            )),
        GetPage(
            name: Ece3ResultScreen.routeName,
            page: () => const Ece3ResultScreen()),
        GetPage(
            name: Ece3AnswerCheckScreen.routeName,
            page: () => const Ece3AnswerCheckScreen()),
        GetPage(name: EceSem3.routeName, page: (() => const EceSem3())),

        //ece-4 routes

        GetPage(
            name: "/ece_sem4",
            page: () => const EceSem4(),
            binding: BindingsBuilder(
              () {
                Get.put(ECE4QPC());
              },
            )),
        GetPage(
            name: "/ece4questionsscreen",
            page: () => const Ece4QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Ece4QuestionsController>(Ece4QuestionsController());
            }))),
        GetPage(
            name: Ece4TestOverviewScreen.routeName,
            page: () => const Ece4TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Ece4QuestionsController>(Ece4QuestionsController());
              },
            )),
        GetPage(
            name: Ece4ResultScreen.routeName,
            page: () => const Ece4ResultScreen()),
        GetPage(
            name: Ece4AnswerCheckScreen.routeName,
            page: () => const Ece4AnswerCheckScreen()),
        GetPage(name: EceSem4.routeName, page: (() => const EceSem4())),

        //ece-5 routes

        GetPage(
            name: "/ece_sem5",
            page: () => const EceSem5(),
            binding: BindingsBuilder(
              () {
                Get.put(ECE5QPC());
              },
            )),
        GetPage(
            name: "/ece5questionsscreen",
            page: () => const Ece5QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Ece5QuestionsController>(Ece5QuestionsController());
            }))),
        GetPage(
            name: Ece5TestOverviewScreen.routeName,
            page: () => const Ece5TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Ece5QuestionsController>(Ece5QuestionsController());
              },
            )),
        GetPage(
            name: Ece5ResultScreen.routeName,
            page: () => const Ece5ResultScreen()),
        GetPage(
            name: Ece5AnswerCheckScreen.routeName,
            page: () => const Ece5AnswerCheckScreen()),
        GetPage(name: EceSem5.routeName, page: (() => const EceSem5())),

        //ece-6 routes

        GetPage(
            name: "/ece_sem6",
            page: () => const EceSem6(),
            binding: BindingsBuilder(
              () {
                Get.put(ECE6QPC());
              },
            )),
        GetPage(
            name: "/ece6questionsscreen",
            page: () => const Ece6QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Ece6QuestionsController>(Ece6QuestionsController());
            }))),
        GetPage(
            name: Ece6TestOverviewScreen.routeName,
            page: () => const Ece6TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Ece6QuestionsController>(Ece6QuestionsController());
              },
            )),
        GetPage(
            name: Ece6ResultScreen.routeName,
            page: () => const Ece6ResultScreen()),
        GetPage(
            name: Ece6AnswerCheckScreen.routeName,
            page: () => const Ece6AnswerCheckScreen()),
        GetPage(name: EceSem6.routeName, page: (() => const EceSem6())),

        //ece-7 routes

        GetPage(
            name: "/ece_sem7",
            page: () => const EceSem7(),
            binding: BindingsBuilder(
              () {
                Get.put(ECE7QPC());
              },
            )),
        GetPage(
            name: "/ece7questionsscreen",
            page: () => const Ece7QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Ece7QuestionsController>(Ece7QuestionsController());
            }))),
        GetPage(
            name: Ece7TestOverviewScreen.routeName,
            page: () => const Ece7TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Ece7QuestionsController>(Ece7QuestionsController());
              },
            )),
        GetPage(
            name: Ece7ResultScreen.routeName,
            page: () => const Ece7ResultScreen()),
        GetPage(
            name: Ece7AnswerCheckScreen.routeName,
            page: () => const Ece7AnswerCheckScreen()),
        GetPage(name: EceSem7.routeName, page: (() => const EceSem7())),

        //ece-8 routes

        GetPage(
            name: "/ece_sem8",
            page: () => const EceSem8(),
            binding: BindingsBuilder(
              () {
                Get.put(ECE8QPC());
              },
            )),
        GetPage(
            name: "/ece8questionsscreen",
            page: () => const Ece8QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Ece8QuestionsController>(Ece8QuestionsController());
            }))),
        GetPage(
            name: Ece8TestOverviewScreen.routeName,
            page: () => const Ece8TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Ece8QuestionsController>(Ece8QuestionsController());
              },
            )),
        GetPage(
            name: Ece8ResultScreen.routeName,
            page: () => const Ece8ResultScreen()),
        GetPage(
            name: Ece8AnswerCheckScreen.routeName,
            page: () => const Ece8AnswerCheckScreen()),
        GetPage(name: EceSem8.routeName, page: (() => const EceSem8())),

        //eee-1 routes

        GetPage(
            name: "/eee_sem1",
            page: () => const EeeSem1(),
            binding: BindingsBuilder(
              () {
                Get.put(Eee1QPC());
              },
            )),
        GetPage(
            name: "/eee1questionsscreen",
            page: () => const Eee1QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Eee1QuestionsController>(Eee1QuestionsController());
            }))),
        GetPage(
            name: Eee1TestOverviewScreen.routeName,
            page: () => const Eee1TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Eee1QuestionsController>(Eee1QuestionsController());
              },
            )),
        GetPage(
            name: Eee1ResultScreen.routeName,
            page: () => const Eee1ResultScreen()),
        GetPage(
            name: Eee1AnswerCheckScreen.routeName,
            page: () => const Eee1AnswerCheckScreen()),
        GetPage(name: EeeSem1.routeName, page: (() => const EeeSem1())),

        //eee-2 routes

        GetPage(
            name: "/eee_sem2",
            page: () => const EeeSem2(),
            binding: BindingsBuilder(
              () {
                Get.put(Eee2QPC());
              },
            )),
        GetPage(
            name: "/eee2questionsscreen",
            page: () => const Eee2QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Eee2QuestionsController>(Eee2QuestionsController());
            }))),
        GetPage(
            name: Eee2TestOverviewScreen.routeName,
            page: () => const Eee2TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Eee2QuestionsController>(Eee2QuestionsController());
              },
            )),
        GetPage(
            name: Eee2ResultScreen.routeName,
            page: () => const Eee2ResultScreen()),
        GetPage(
            name: Eee2AnswerCheckScreen.routeName,
            page: () => const Eee2AnswerCheckScreen()),
        GetPage(name: EeeSem2.routeName, page: (() => const EeeSem2())),

        //eee-3 routes

        GetPage(
            name: "/eee_sem3",
            page: () => const EeeSem3(),
            binding: BindingsBuilder(
              () {
                Get.put(Eee3QPC());
              },
            )),
        GetPage(
            name: "/eee3questionsscreen",
            page: () => const Eee3QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Eee3QuestionsController>(Eee3QuestionsController());
            }))),
        GetPage(
            name: Eee3TestOverviewScreen.routeName,
            page: () => const Eee3TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Eee3QuestionsController>(Eee3QuestionsController());
              },
            )),
        GetPage(
            name: Eee3ResultScreen.routeName,
            page: () => const Eee3ResultScreen()),
        GetPage(
            name: Eee3AnswerCheckScreen.routeName,
            page: () => const Eee3AnswerCheckScreen()),
        GetPage(name: EeeSem3.routeName, page: (() => const EeeSem3())),

        //eee-4 routes

        GetPage(
            name: "/eee_sem4",
            page: () => const EeeSem4(),
            binding: BindingsBuilder(
              () {
                Get.put(Eee4QPC());
              },
            )),
        GetPage(
            name: "/eee4questionsscreen",
            page: () => const Eee4QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Eee4QuestionsController>(Eee4QuestionsController());
            }))),
        GetPage(
            name: Eee4TestOverviewScreen.routeName,
            page: () => const Eee4TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Eee4QuestionsController>(Eee4QuestionsController());
              },
            )),
        GetPage(
            name: Eee4ResultScreen.routeName,
            page: () => const Eee4ResultScreen()),
        GetPage(
            name: Eee4AnswerCheckScreen.routeName,
            page: () => const Eee4AnswerCheckScreen()),
        GetPage(name: EeeSem4.routeName, page: (() => const EeeSem4())),

        //eee-5 routes

        GetPage(
            name: "/eee_sem5",
            page: () => const EeeSem5(),
            binding: BindingsBuilder(
              () {
                Get.put(Eee5QPC());
              },
            )),
        GetPage(
            name: "/eee5questionsscreen",
            page: () => const Eee5QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Eee5QuestionsController>(Eee5QuestionsController());
            }))),
        GetPage(
            name: Eee5TestOverviewScreen.routeName,
            page: () => const Eee5TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Eee5QuestionsController>(Eee5QuestionsController());
              },
            )),
        GetPage(
            name: Eee5ResultScreen.routeName,
            page: () => const Eee5ResultScreen()),
        GetPage(
            name: Eee5AnswerCheckScreen.routeName,
            page: () => const Eee5AnswerCheckScreen()),
        GetPage(name: EeeSem5.routeName, page: (() => const EeeSem5())),

        //eee-6 routes

        GetPage(
            name: "/eee_sem6",
            page: () => const EeeSem6(),
            binding: BindingsBuilder(
              () {
                Get.put(Eee6QPC());
              },
            )),
        GetPage(
            name: "/eee6questionsscreen",
            page: () => const Eee6QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Eee6QuestionsController>(Eee6QuestionsController());
            }))),
        GetPage(
            name: Eee6TestOverviewScreen.routeName,
            page: () => const Eee6TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Eee6QuestionsController>(Eee6QuestionsController());
              },
            )),
        GetPage(
            name: Eee6ResultScreen.routeName,
            page: () => const Eee6ResultScreen()),
        GetPage(
            name: Eee6AnswerCheckScreen.routeName,
            page: () => const Eee6AnswerCheckScreen()),
        GetPage(name: EeeSem6.routeName, page: (() => const EeeSem6())),

        //eee-7 routes

        GetPage(
            name: "/eee_sem7",
            page: () => const EeeSem7(),
            binding: BindingsBuilder(
              () {
                Get.put(Eee7QPC());
              },
            )),
        GetPage(
            name: "/eee7questionsscreen",
            page: () => const Eee7QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Eee7QuestionsController>(Eee7QuestionsController());
            }))),
        GetPage(
            name: Eee7TestOverviewScreen.routeName,
            page: () => const Eee7TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Eee7QuestionsController>(Eee7QuestionsController());
              },
            )),
        GetPage(
            name: Eee7ResultScreen.routeName,
            page: () => const Eee7ResultScreen()),
        GetPage(
            name: Eee7AnswerCheckScreen.routeName,
            page: () => const Eee7AnswerCheckScreen()),
        GetPage(name: EeeSem7.routeName, page: (() => const EeeSem7())),

        //eee-8 routes

        GetPage(
            name: "/eee_sem8",
            page: () => const EeeSem8(),
            binding: BindingsBuilder(
              () {
                Get.put(Eee8QPC());
              },
            )),
        GetPage(
            name: "/eee8questionsscreen",
            page: () => const Eee8QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<Eee8QuestionsController>(Eee8QuestionsController());
            }))),
        GetPage(
            name: Eee8TestOverviewScreen.routeName,
            page: () => const Eee8TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<Eee8QuestionsController>(Eee8QuestionsController());
              },
            )),
        GetPage(
            name: Eee8ResultScreen.routeName,
            page: () => const Eee8ResultScreen()),
        GetPage(
            name: Eee8AnswerCheckScreen.routeName,
            page: () => const Eee8AnswerCheckScreen()),
        GetPage(name: EeeSem8.routeName, page: (() => const EeeSem8())),

        //it - 1 routes

        GetPage(
            name: "/it_sem1",
            page: () => const ItSem1(),
            binding: BindingsBuilder(
              () {
                Get.put(It1QPC());
              },
            )),
        GetPage(
            name: "/it1questionsscreen",
            page: () => const It1QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<It1QuestionsController>(It1QuestionsController());
            }))),
        GetPage(
            name: It1TestOverviewScreen.routeName,
            page: () => const It1TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<It1QuestionsController>(It1QuestionsController());
              },
            )),
        GetPage(
            name: It1ResultScreen.routeName,
            page: () => const It1ResultScreen()),
        GetPage(
            name: It1AnswerCheckScreen.routeName,
            page: () => const It1AnswerCheckScreen()),
        GetPage(name: ItSem1.routeName, page: (() => const ItSem1())),

        //it - 2 routes

        GetPage(
            name: "/it_sem2",
            page: () => const ItSem2(),
            binding: BindingsBuilder(
              () {
                Get.put(It2QPC());
              },
            )),
        GetPage(
            name: "/it2questionsscreen",
            page: () => const It2QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<It2QuestionsController>(It2QuestionsController());
            }))),
        GetPage(
            name: It2TestOverviewScreen.routeName,
            page: () => const It2TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<It2QuestionsController>(It2QuestionsController());
              },
            )),
        GetPage(
            name: It2ResultScreen.routeName,
            page: () => const It2ResultScreen()),
        GetPage(
            name: It2AnswerCheckScreen.routeName,
            page: () => const It2AnswerCheckScreen()),
        GetPage(name: ItSem2.routeName, page: (() => const ItSem2())),

        //it - 3 routes

        GetPage(
            name: "/it_sem3",
            page: () => const ItSem3(),
            binding: BindingsBuilder(
              () {
                Get.put(It3QPC());
              },
            )),
        GetPage(
            name: "/it3questionsscreen",
            page: () => const It3QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<It3QuestionsController>(It3QuestionsController());
            }))),
        GetPage(
            name: It3TestOverviewScreen.routeName,
            page: () => const It3TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<It3QuestionsController>(It3QuestionsController());
              },
            )),
        GetPage(
            name: It3ResultScreen.routeName,
            page: () => const It3ResultScreen()),
        GetPage(
            name: It3AnswerCheckScreen.routeName,
            page: () => const It3AnswerCheckScreen()),
        GetPage(name: ItSem3.routeName, page: (() => const ItSem3())),

        //it - 4 routes

        GetPage(
            name: "/it_sem4",
            page: () => const ItSem4(),
            binding: BindingsBuilder(
              () {
                Get.put(It4QPC());
              },
            )),
        GetPage(
            name: "/it4questionsscreen",
            page: () => const It4QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<It4QuestionsController>(It4QuestionsController());
            }))),
        GetPage(
            name: It4TestOverviewScreen.routeName,
            page: () => const It4TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<It4QuestionsController>(It4QuestionsController());
              },
            )),
        GetPage(
            name: It4ResultScreen.routeName,
            page: () => const It4ResultScreen()),
        GetPage(
            name: It4AnswerCheckScreen.routeName,
            page: () => const It4AnswerCheckScreen()),
        GetPage(name: ItSem4.routeName, page: (() => const ItSem4())),

        //it - 5 routes

        GetPage(
            name: "/it_sem5",
            page: () => const ItSem5(),
            binding: BindingsBuilder(
              () {
                Get.put(It5QPC());
              },
            )),
        GetPage(
            name: "/it5questionsscreen",
            page: () => const It5QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<It5QuestionsController>(It5QuestionsController());
            }))),
        GetPage(
            name: It5TestOverviewScreen.routeName,
            page: () => const It5TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<It5QuestionsController>(It5QuestionsController());
              },
            )),
        GetPage(
            name: It5ResultScreen.routeName,
            page: () => const It5ResultScreen()),
        GetPage(
            name: It5AnswerCheckScreen.routeName,
            page: () => const It5AnswerCheckScreen()),
        GetPage(name: ItSem5.routeName, page: (() => const ItSem5())),

        //it - 6 routes

        GetPage(
            name: "/it_sem6",
            page: () => const ItSem6(),
            binding: BindingsBuilder(
              () {
                Get.put(It6QPC());
              },
            )),
        GetPage(
            name: "/it6questionsscreen",
            page: () => const It6QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<It6QuestionsController>(It6QuestionsController());
            }))),
        GetPage(
            name: It6TestOverviewScreen.routeName,
            page: () => const It6TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<It6QuestionsController>(It6QuestionsController());
              },
            )),
        GetPage(
            name: It6ResultScreen.routeName,
            page: () => const It6ResultScreen()),
        GetPage(
            name: It6AnswerCheckScreen.routeName,
            page: () => const It6AnswerCheckScreen()),
        GetPage(name: ItSem6.routeName, page: (() => const ItSem6())),

        //it - 7 routes

        GetPage(
            name: "/it_sem7",
            page: () => const ItSem7(),
            binding: BindingsBuilder(
              () {
                Get.put(It7QPC());
              },
            )),
        GetPage(
            name: "/it7questionsscreen",
            page: () => const It7QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<It7QuestionsController>(It7QuestionsController());
            }))),
        GetPage(
            name: It7TestOverviewScreen.routeName,
            page: () => const It7TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<It7QuestionsController>(It7QuestionsController());
              },
            )),
        GetPage(
            name: It7ResultScreen.routeName,
            page: () => const It7ResultScreen()),
        GetPage(
            name: It7AnswerCheckScreen.routeName,
            page: () => const It7AnswerCheckScreen()),
        GetPage(name: ItSem7.routeName, page: (() => const ItSem7())),

        //it - 8 routes

        GetPage(
            name: "/it_sem8",
            page: () => const ItSem8(),
            binding: BindingsBuilder(
              () {
                Get.put(It8QPC());
              },
            )),
        GetPage(
            name: "/it8questionsscreen",
            page: () => const It8QuestionsScreen(),
            binding: BindingsBuilder((() {
              Get.put<It8QuestionsController>(It8QuestionsController());
            }))),
        GetPage(
            name: It8TestOverviewScreen.routeName,
            page: () => const It8TestOverviewScreen(),
            binding: BindingsBuilder(
              () {
                Get.put<It8QuestionsController>(It8QuestionsController());
              },
            )),
        GetPage(
            name: It8ResultScreen.routeName,
            page: () => const It8ResultScreen()),
        GetPage(
            name: It8AnswerCheckScreen.routeName,
            page: () => const It8AnswerCheckScreen()),
        GetPage(name: ItSem8.routeName, page: (() => const ItSem8())),
      ];
}
