.class public final enum Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum add_condition:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum add_feature:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum hide:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum remove_condition:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum remove_feature:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum reset:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum show:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

.field public static final enum unknown:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 2
    .line 3
    const-string/jumbo v1, "show"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->show:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 11
    .line 12
    new-instance v1, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 13
    .line 14
    const-string v2, "hide"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->hide:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 21
    .line 22
    new-instance v2, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 23
    .line 24
    const-string v3, "add_feature"

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->add_feature:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 31
    .line 32
    new-instance v3, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 33
    .line 34
    const-string/jumbo v4, "remove_feature"

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    sput-object v3, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->remove_feature:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 42
    .line 43
    new-instance v4, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 44
    .line 45
    const-string v5, "add_condition"

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->add_condition:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 52
    .line 53
    new-instance v5, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 54
    .line 55
    const-string/jumbo v6, "remove_condition"

    .line 56
    .line 57
    .line 58
    const/4 v7, 0x5

    .line 59
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    sput-object v5, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->remove_condition:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 63
    .line 64
    new-instance v6, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 65
    .line 66
    const-string/jumbo v7, "reset"

    .line 67
    .line 68
    .line 69
    const/4 v8, 0x6

    .line 70
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    sput-object v6, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->reset:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 74
    .line 75
    new-instance v7, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 76
    .line 77
    const-string/jumbo v8, "unknown"

    .line 78
    .line 79
    .line 80
    const/4 v9, 0x7

    .line 81
    invoke-direct {v7, v8, v9}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    sput-object v7, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->unknown:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 85
    .line 86
    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->$VALUES:[Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 91
    .line 92
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->$VALUES:[Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    .line 8
    .line 9
    return-object v0
.end method
