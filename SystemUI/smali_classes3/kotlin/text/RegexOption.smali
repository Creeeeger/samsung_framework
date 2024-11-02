.class public final enum Lkotlin/text/RegexOption;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/text/FlagEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/RegexOption;",
        ">;",
        "Lkotlin/text/FlagEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lkotlin/text/RegexOption;


# instance fields
.field private final mask:I

.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v7, Lkotlin/text/RegexOption;

    .line 2
    .line 3
    const-string v1, "IGNORE_CASE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v0, v7

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lkotlin/text/RegexOption;

    .line 15
    .line 16
    const-string v9, "MULTILINE"

    .line 17
    .line 18
    const/4 v10, 0x1

    .line 19
    const/16 v11, 0x8

    .line 20
    .line 21
    const/16 v16, 0x0

    .line 22
    .line 23
    const/16 v17, 0x2

    .line 24
    .line 25
    const/16 v18, 0x0

    .line 26
    .line 27
    const/4 v12, 0x0

    .line 28
    const/4 v13, 0x2

    .line 29
    const/4 v14, 0x0

    .line 30
    move-object v8, v1

    .line 31
    invoke-direct/range {v8 .. v14}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lkotlin/text/RegexOption;

    .line 35
    .line 36
    const-string v20, "LITERAL"

    .line 37
    .line 38
    const/16 v21, 0x2

    .line 39
    .line 40
    const/16 v22, 0x10

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    const/16 v23, 0x0

    .line 45
    .line 46
    const/16 v24, 0x2

    .line 47
    .line 48
    const/16 v25, 0x0

    .line 49
    .line 50
    move-object/from16 v19, v2

    .line 51
    .line 52
    invoke-direct/range {v19 .. v25}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .line 54
    .line 55
    new-instance v5, Lkotlin/text/RegexOption;

    .line 56
    .line 57
    const-string v9, "UNIX_LINES"

    .line 58
    .line 59
    const/4 v10, 0x3

    .line 60
    const/4 v11, 0x1

    .line 61
    move-object v8, v5

    .line 62
    invoke-direct/range {v8 .. v14}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    new-instance v6, Lkotlin/text/RegexOption;

    .line 66
    .line 67
    const-string v20, "COMMENTS"

    .line 68
    .line 69
    const/16 v21, 0x4

    .line 70
    .line 71
    const/16 v22, 0x4

    .line 72
    .line 73
    move-object/from16 v19, v6

    .line 74
    .line 75
    invoke-direct/range {v19 .. v25}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 76
    .line 77
    .line 78
    new-instance v19, Lkotlin/text/RegexOption;

    .line 79
    .line 80
    const-string v13, "DOT_MATCHES_ALL"

    .line 81
    .line 82
    const/4 v14, 0x5

    .line 83
    const/16 v15, 0x20

    .line 84
    .line 85
    move-object/from16 v12, v19

    .line 86
    .line 87
    invoke-direct/range {v12 .. v18}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    .line 89
    .line 90
    new-instance v15, Lkotlin/text/RegexOption;

    .line 91
    .line 92
    const-string v9, "CANON_EQ"

    .line 93
    .line 94
    const/4 v10, 0x6

    .line 95
    const/16 v11, 0x80

    .line 96
    .line 97
    move-object v8, v15

    .line 98
    move v12, v0

    .line 99
    move v13, v3

    .line 100
    move-object v14, v4

    .line 101
    invoke-direct/range {v8 .. v14}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    move-object v0, v7

    .line 105
    move-object v3, v5

    .line 106
    move-object v4, v6

    .line 107
    move-object/from16 v5, v19

    .line 108
    .line 109
    move-object v6, v15

    .line 110
    filled-new-array/range {v0 .. v6}, [Lkotlin/text/RegexOption;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lkotlin/text/RegexOption;->$VALUES:[Lkotlin/text/RegexOption;

    .line 115
    .line 116
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/RegexOption;->value:I

    iput p4, p0, Lkotlin/text/RegexOption;->mask:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    move p4, p3

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/RegexOption;
    .locals 1

    .line 1
    const-class v0, Lkotlin/text/RegexOption;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlin/text/RegexOption;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lkotlin/text/RegexOption;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/text/RegexOption;->$VALUES:[Lkotlin/text/RegexOption;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lkotlin/text/RegexOption;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/text/RegexOption;->value:I

    .line 2
    .line 3
    return p0
.end method
