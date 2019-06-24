/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 1 "cminus.y" /* yacc.c:339  */

#define YYPARSER
#include "globals.h"
#include "util.h"
#include "scan.h"
#include "parse.h"
#include "cminus.tab.h"
#include "string.h"
#define MAXSTACKSIZE 1000

static TreeNode * savedTree;
static int yylex(void);
int yyerror(char * message);
TreeNode * parse(void);

typedef struct ID_ELEMENT{
	char *name;
	int lineno;
}ID_ELEMENT;
static ID_ELEMENT Stack[MAXSTACKSIZE];
static int top = -1;
static int savedNum = 0;
#define PUSH_STACK(x, y) do{\
	Stack[++top].name = copyString((x));\
	Stack[top].lineno = (y);\
	}while(0)

#define POP_STACK(x, y) do{\
	(x) = Stack[top].name;\
	(y) = Stack[top--].lineno;\
	}while(0)


#line 100 "cminus.tab.c" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "cminus.tab.h".  */
#ifndef YY_YY_CMINUS_TAB_H_INCLUDED
# define YY_YY_CMINUS_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    NONE = 258,
    ERROR = 259,
    COMERR = 260,
    IF = 261,
    ELSE = 262,
    RETURN = 263,
    WHILE = 264,
    INT = 265,
    VOID = 266,
    INTARR = 267,
    VOIDARR = 268,
    ID = 269,
    NUM = 270,
    ASSIGN = 271,
    EQ = 272,
    NEQ = 273,
    LT = 274,
    LEQ = 275,
    GT = 276,
    GEQ = 277,
    PLUS = 278,
    MINUS = 279,
    TIMES = 280,
    DIVIDE = 281,
    LPAREN = 282,
    RPAREN = 283,
    LCB = 284,
    RCB = 285,
    LSB = 286,
    RSB = 287,
    COMMA = 288,
    SEMI = 289
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_CMINUS_TAB_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 186 "cminus.tab.c" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  9
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   99

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  35
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  32
/* YYNRULES -- Number of rules.  */
#define YYNRULES  65
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  104

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   289

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,    47,    47,    49,    59,    61,    62,    64,    70,    70,
      81,    82,    84,    92,    93,    95,   105,   107,   112,   121,
     127,   137,   139,   149,   151,   152,   153,   154,   155,   157,
     158,   160,   165,   172,   178,   179,   181,   187,   189,   190,
     196,   202,   204,   205,   206,   207,   208,   209,   211,   217,
     219,   220,   222,   228,   230,   231,   233,   234,   235,   236,
     238,   243,   244,   246,   256,   258
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "NONE", "ERROR", "COMERR", "IF", "ELSE",
  "RETURN", "WHILE", "INT", "VOID", "INTARR", "VOIDARR", "ID", "NUM",
  "ASSIGN", "EQ", "NEQ", "LT", "LEQ", "GT", "GEQ", "PLUS", "MINUS",
  "TIMES", "DIVIDE", "LPAREN", "RPAREN", "LCB", "RCB", "LSB", "RSB",
  "COMMA", "SEMI", "$accept", "program", "declaration_list", "declaration",
  "var_declaration", "$@1", "type_specifier", "fun_declaration", "params",
  "param_list", "param", "compound_stmt", "local_declarations",
  "statement_list", "statement", "expression_stmt", "selection_stmt",
  "iteration_stmt", "return_stmt", "expression", "var",
  "simple_expression", "relop", "additive_expression", "addop", "term",
  "mulop", "factor", "call", "args", "arg_list", "identifier", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289
};
# endif

#define YYPACT_NINF -94

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-94)))

#define YYTABLE_NINF -15

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int8 yypact[] =
{
      57,   -94,   -94,     5,    57,   -94,   -94,     1,   -94,   -94,
     -94,   -94,    18,    59,    20,   -94,    -7,     1,     9,    17,
     -94,   -94,     8,    26,    57,    43,    44,   -94,   -94,   -94,
      45,   -94,    57,   -94,   -94,     1,    -2,    23,    51,    19,
      53,   -94,    29,   -94,   -94,   -94,   -94,   -94,   -94,   -94,
     -94,    47,    61,   -94,    42,    46,   -94,   -94,    -9,    29,
     -94,    48,    29,    55,   -94,    29,   -94,   -94,   -94,   -94,
     -94,   -94,   -94,   -94,    29,    29,   -94,   -94,    29,    29,
      29,    56,   -94,    58,   -94,   -94,   -94,    50,    46,   -94,
     -94,    60,    52,    62,     2,     2,   -94,    29,   -94,    80,
     -94,   -94,     2,   -94
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    10,    11,     0,     2,     4,     5,     0,     6,     1,
       3,    65,     0,     0,     0,     7,    11,     0,     0,    13,
      16,     8,    17,     0,     0,     0,     0,    21,    12,    15,
       0,    18,    23,     9,    20,     0,     0,     0,     0,     0,
       0,    59,     0,    19,    30,    25,    22,    24,    26,    27,
      28,     0,    57,    37,    41,    49,    53,    58,    38,     0,
      34,     0,     0,     0,    29,     0,    46,    47,    43,    42,
      44,    45,    50,    51,     0,     0,    54,    55,     0,    62,
       0,     0,    35,     0,    56,    36,    57,    40,    48,    52,
      64,     0,    61,     0,     0,     0,    60,     0,    39,    31,
      33,    63,     0,    32
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -94,   -94,   -94,    85,    63,   -94,     6,   -94,   -94,   -94,
      66,    68,   -94,   -94,   -93,   -94,   -94,   -94,   -94,   -39,
     -27,   -94,   -94,    22,   -94,    24,   -94,    14,   -94,   -94,
     -94,     7
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
      -1,     3,     4,     5,     6,    25,     7,     8,    18,    19,
      20,    45,    32,    36,    46,    47,    48,    49,    50,    51,
      52,    53,    74,    54,    75,    55,    78,    56,    57,    91,
      92,    58
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int8 yytable[] =
{
      61,    99,   100,    63,    38,     9,    39,    40,    38,   103,
      39,    40,    11,    41,    12,    11,    11,    41,    79,    17,
      81,   -14,    80,    83,    22,    42,    85,    27,    43,    42,
      17,    27,    44,    11,    41,    21,    44,    23,    35,    26,
      90,    93,    37,    11,    41,    13,    42,    86,    86,    14,
      24,    86,    15,    60,    14,    27,    42,    15,   101,    66,
      67,    68,    69,    70,    71,    72,    73,     1,     2,     1,
      16,    76,    77,    72,    73,    30,    31,    65,    59,    33,
      62,    64,    82,    84,    94,    97,    95,   102,    96,    10,
      29,    28,    89,     0,    98,    34,    87,     0,     0,    88
};

static const yytype_int8 yycheck[] =
{
      39,    94,    95,    42,     6,     0,     8,     9,     6,   102,
       8,     9,    14,    15,     7,    14,    14,    15,    27,    13,
      59,    28,    31,    62,    17,    27,    65,    29,    30,    27,
      24,    29,    34,    14,    15,    15,    34,    28,    32,    31,
      79,    80,    35,    14,    15,    27,    27,    74,    75,    31,
      33,    78,    34,    34,    31,    29,    27,    34,    97,    17,
      18,    19,    20,    21,    22,    23,    24,    10,    11,    10,
      11,    25,    26,    23,    24,    32,    32,    16,    27,    34,
      27,    34,    34,    28,    28,    33,    28,     7,    28,     4,
      24,    23,    78,    -1,    32,    32,    74,    -1,    -1,    75
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,    10,    11,    36,    37,    38,    39,    41,    42,     0,
      38,    14,    66,    27,    31,    34,    11,    41,    43,    44,
      45,    15,    66,    28,    33,    40,    31,    29,    46,    45,
      32,    32,    47,    34,    39,    41,    48,    66,     6,     8,
       9,    15,    27,    30,    34,    46,    49,    50,    51,    52,
      53,    54,    55,    56,    58,    60,    62,    63,    66,    27,
      34,    54,    27,    54,    34,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    57,    59,    25,    26,    61,    27,
      31,    54,    34,    54,    28,    54,    55,    58,    60,    62,
      54,    64,    65,    54,    28,    28,    28,    33,    32,    49,
      49,    54,     7,    49
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    35,    36,    37,    37,    38,    38,    39,    40,    39,
      41,    41,    42,    43,    43,    44,    44,    45,    45,    46,
      47,    47,    48,    48,    49,    49,    49,    49,    49,    50,
      50,    51,    51,    52,    53,    53,    54,    54,    55,    55,
      56,    56,    57,    57,    57,    57,    57,    57,    58,    58,
      59,    59,    60,    60,    61,    61,    62,    62,    62,    62,
      63,    64,    64,    65,    65,    66
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     1,     3,     0,     7,
       1,     1,     6,     1,     1,     3,     1,     2,     4,     4,
       2,     0,     2,     0,     1,     1,     1,     1,     1,     2,
       1,     5,     7,     5,     2,     3,     3,     1,     1,     4,
       3,     1,     1,     1,     1,     1,     1,     1,     3,     1,
       1,     1,     3,     1,     1,     1,     3,     1,     1,     1,
       4,     1,     0,     3,     1,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 47 "cminus.y" /* yacc.c:1646  */
    {savedTree = (yyvsp[0]);}
#line 1338 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 3:
#line 50 "cminus.y" /* yacc.c:1646  */
    {	YYSTYPE t = (yyvsp[-1]);
							if(t != NULL){
								while(t->sibling != NULL)
									t = t->sibling;
								t->sibling = (yyvsp[0]);
								(yyval) = (yyvsp[-1]);
							}
							else (yyval) = (yyvsp[0]);
						}
#line 1352 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 4:
#line 59 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1358 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 5:
#line 61 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1364 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 6:
#line 62 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1370 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 7:
#line 65 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newDeclareNode();
							(yyval)->dtype = (TokenType)(long)(yyvsp[-2]);
							POP_STACK((yyval)->name, (yyval)->lineno);

						}
#line 1380 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 8:
#line 70 "cminus.y" /* yacc.c:1646  */
    {savedNum = atoi(tokenString);}
#line 1386 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 9:
#line 72 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newDeclareNode();
							if((yyvsp[-6]) == (YYSTYPE)INT)
								(yyval)->dtype = INTARR;
							else
								(yyval)->dtype = VOIDARR;
							(yyval)->val =savedNum;
							POP_STACK((yyval)->name, (yyval)->lineno);
						}
#line 1399 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 10:
#line 81 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)INT;}
#line 1405 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 11:
#line 82 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)VOID;}
#line 1411 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 12:
#line 85 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newFuncNode();
							(yyval)->dtype = (TokenType)(long)(yyvsp[-5]);
							(yyval)->child[0] = (yyvsp[-2]);
							(yyval)->child[1] = (yyvsp[0]);
							POP_STACK((yyval)->name, (yyval)->lineno);
						}
#line 1422 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 13:
#line 92 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1428 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 14:
#line 93 "cminus.y" /* yacc.c:1646  */
    { (yyval) = NULL; }
#line 1434 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 15:
#line 96 "cminus.y" /* yacc.c:1646  */
    {	YYSTYPE t = (yyvsp[-2]);
							if(t != NULL){
								while(t->sibling != NULL)
									t = t->sibling;
								t->sibling = (yyvsp[0]);
								(yyval) = (yyvsp[-2]);
							}
							else (yyval) = (yyvsp[0]);
						}
#line 1448 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 16:
#line 105 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1454 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 17:
#line 108 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newParamNode();
							(yyval)->dtype = (TokenType)(long)(yyvsp[-1]);
							POP_STACK((yyval)->name, (yyval)->lineno);
						}
#line 1463 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 18:
#line 113 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newParamNode();
							if((yyvsp[-3]) == (YYSTYPE)INT)
								(yyval)->dtype = INTARR;
							else
								(yyval)->dtype = VOIDARR;
							POP_STACK((yyval)->name, (yyval)->lineno);
						}
#line 1475 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 19:
#line 122 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newStmtNode(CompoundK);
							(yyval)->child[0] = (yyvsp[-2]);
							(yyval)->child[1] = (yyvsp[-1]);
						}
#line 1484 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 20:
#line 128 "cminus.y" /* yacc.c:1646  */
    {	YYSTYPE t = (yyvsp[-1]);
							if( t!= NULL){
								while(t->sibling != NULL)
									t = t->sibling;
								t->sibling = (yyvsp[0]);
								(yyval) = (yyvsp[-1]);
							}
							else (yyval) = (yyvsp[0]);
						}
#line 1498 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 21:
#line 137 "cminus.y" /* yacc.c:1646  */
    { (yyval) = NULL; }
#line 1504 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 22:
#line 140 "cminus.y" /* yacc.c:1646  */
    {	YYSTYPE t = (yyvsp[-1]);
							if (t!= NULL){
								while(t->sibling != NULL)
									t = t->sibling;
								t->sibling = (yyvsp[0]);
								(yyval) = (yyvsp[-1]);
							}
							else (yyval) = (yyvsp[0]);
						}
#line 1518 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 23:
#line 149 "cminus.y" /* yacc.c:1646  */
    { (yyval) = NULL;}
#line 1524 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 24:
#line 151 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1530 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 25:
#line 152 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1536 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 26:
#line 153 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1542 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 27:
#line 154 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1548 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 28:
#line 155 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1554 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 29:
#line 157 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[-1]); }
#line 1560 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 30:
#line 158 "cminus.y" /* yacc.c:1646  */
    { (yyval) = NULL; }
#line 1566 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 31:
#line 161 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newStmtNode(IfK);
							(yyval)->child[0] = (yyvsp[-2]);
							(yyval)->child[1] = (yyvsp[0]);
						}
#line 1575 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 32:
#line 166 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newStmtNode(IfK);
							(yyval)->child[0] = (yyvsp[-4]);
							(yyval)->child[1] = (yyvsp[-2]);
							(yyval)->child[2] = (yyvsp[0]);
						}
#line 1585 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 33:
#line 173 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newStmtNode(WhileK);
							(yyval)->child[0] = (yyvsp[-2]);
							(yyval)->child[1] = (yyvsp[0]);
						}
#line 1594 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 34:
#line 178 "cminus.y" /* yacc.c:1646  */
    { (yyval) = newStmtNode(ReturnK);}
#line 1600 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 35:
#line 179 "cminus.y" /* yacc.c:1646  */
    { (yyval) = newStmtNode(ReturnK); (yyval)->child[0] = (yyvsp[-1]);}
#line 1606 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 36:
#line 182 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newStmtNode(ExpK);
							(yyval)->child[0] = (yyvsp[-2]);
							(yyval)->op = ASSIGN;
							(yyval)->child[1] = (yyvsp[0]);
						}
#line 1616 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 37:
#line 187 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1622 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 38:
#line 189 "cminus.y" /* yacc.c:1646  */
    { (yyval) = newFactorNode(IdK); POP_STACK((yyval)->name, (yyval)->lineno);}
#line 1628 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 39:
#line 191 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newFactorNode(ArrK);
							(yyval)->child[0] = (yyvsp[-1]);
							POP_STACK((yyval)->name, (yyval)->lineno);
						}
#line 1637 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 40:
#line 197 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newStmtNode(ExpK);
							(yyval)->child[0] = (yyvsp[-2]);
							(yyval)->op = (TokenType)(long)(yyvsp[-1]);
							(yyval)->child[1] = (yyvsp[0]);
						}
#line 1647 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 41:
#line 202 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]);}
#line 1653 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 42:
#line 204 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)LEQ;}
#line 1659 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 43:
#line 205 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)LT;}
#line 1665 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 44:
#line 206 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)GT;}
#line 1671 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 45:
#line 207 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)GEQ;}
#line 1677 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 46:
#line 208 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)EQ;}
#line 1683 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 47:
#line 209 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)NEQ;}
#line 1689 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 48:
#line 212 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newStmtNode(ExpK);
							(yyval)->child[0] = (yyvsp[-2]);
							(yyval)->op = (TokenType)(long)(yyvsp[-1]);
							(yyval)->child[1] = (yyvsp[0]);
						}
#line 1699 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 49:
#line 217 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]); }
#line 1705 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 50:
#line 219 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)PLUS; }
#line 1711 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 51:
#line 220 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)MINUS; }
#line 1717 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 52:
#line 223 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newStmtNode(ExpK);
							(yyval)->child[0] = (yyvsp[-2]);
							(yyval)->op = (TokenType)(long)(yyvsp[-1]);
							(yyval)->child[1] = (yyvsp[0]);
						}
#line 1727 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 53:
#line 228 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]);}
#line 1733 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 54:
#line 230 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)TIMES;}
#line 1739 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 55:
#line 231 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (YYSTYPE)DIVIDE;}
#line 1745 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 56:
#line 233 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[-1]);}
#line 1751 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 57:
#line 234 "cminus.y" /* yacc.c:1646  */
    {(yyval) = (yyvsp[0]);}
#line 1757 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 58:
#line 235 "cminus.y" /* yacc.c:1646  */
    {(yyval) = (yyvsp[0]);}
#line 1763 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 59:
#line 236 "cminus.y" /* yacc.c:1646  */
    {(yyval) = newFactorNode(ConstK); (yyval)->val = atoi(tokenString);}
#line 1769 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 60:
#line 239 "cminus.y" /* yacc.c:1646  */
    {	(yyval) = newCallNode();
							(yyval)->child[0] = (yyvsp[-1]);
							POP_STACK((yyval)->name, (yyval)->lineno);
						}
#line 1778 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 61:
#line 243 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]);}
#line 1784 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 62:
#line 244 "cminus.y" /* yacc.c:1646  */
    { (yyval) = NULL;}
#line 1790 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 63:
#line 247 "cminus.y" /* yacc.c:1646  */
    {	YYSTYPE t = (yyvsp[-2]);
							if (t!= NULL){
								while(t->sibling != NULL)
									t = t->sibling;
								t->sibling = (yyvsp[0]);
								(yyval) = (yyvsp[-2]);
							}
							else (yyval) = (yyvsp[0]);
						}
#line 1804 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 64:
#line 256 "cminus.y" /* yacc.c:1646  */
    { (yyval) = (yyvsp[0]);}
#line 1810 "cminus.tab.c" /* yacc.c:1646  */
    break;

  case 65:
#line 258 "cminus.y" /* yacc.c:1646  */
    {PUSH_STACK(tokenString,lineno);}
#line 1816 "cminus.tab.c" /* yacc.c:1646  */
    break;


#line 1820 "cminus.tab.c" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 261 "cminus.y" /* yacc.c:1906  */


int yyerror(char * message)
{
	fprintf(listing, "Syntax error at line %d: %s\n", lineno,message);
	fprintf(listing, "Current token: ");
	printToken(yychar, tokenString);
	Error = TRUE;
	return 0;
}
static int yylex()
{
	return getToken();
}
TreeNode * parse(void)
{
	yyparse();
	return savedTree;
}

