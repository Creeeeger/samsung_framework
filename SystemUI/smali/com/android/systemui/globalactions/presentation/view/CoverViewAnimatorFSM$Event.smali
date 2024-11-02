.class public final enum Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum HIDE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum SHOW:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 2
    .line 3
    const-string v1, "SHOW"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 12
    .line 13
    const-string v2, "HIDE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 22
    .line 23
    const-string v3, "SHOW_CONFIRM"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 30
    .line 31
    new-instance v3, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 32
    .line 33
    const-string v4, "HIDE_CONFIRM"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 40
    .line 41
    new-instance v4, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 42
    .line 43
    const-string v5, "CONFIGURATION_CHANGED"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 50
    .line 51
    const-string v6, "SECURE_CONFIRM"

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    sput-object v5, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 58
    .line 59
    new-instance v6, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 60
    .line 61
    const-string v7, "COVER_TOAST"

    .line 62
    .line 63
    const/4 v8, 0x6

    .line 64
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v6, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 68
    .line 69
    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 74
    .line 75
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 8
    .line 9
    return-object v0
.end method
