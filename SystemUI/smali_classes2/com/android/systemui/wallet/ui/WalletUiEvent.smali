.class public final enum Lcom/android/systemui/wallet/ui/WalletUiEvent;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/wallet/ui/WalletUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/wallet/ui/WalletUiEvent;

.field public static final enum QAW_CHANGE_CARD:Lcom/android/systemui/wallet/ui/WalletUiEvent;

.field public static final enum QAW_CLICK_CARD:Lcom/android/systemui/wallet/ui/WalletUiEvent;

.field public static final enum QAW_IMPRESSION:Lcom/android/systemui/wallet/ui/WalletUiEvent;

.field public static final enum QAW_SHOW_ALL:Lcom/android/systemui/wallet/ui/WalletUiEvent;

.field public static final enum QAW_UNLOCK_FROM_CARD_CLICK:Lcom/android/systemui/wallet/ui/WalletUiEvent;

.field public static final enum QAW_UNLOCK_FROM_SHOW_ALL_BUTTON:Lcom/android/systemui/wallet/ui/WalletUiEvent;

.field public static final enum QAW_UNLOCK_FROM_UNLOCK_BUTTON:Lcom/android/systemui/wallet/ui/WalletUiEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x35c

    .line 5
    .line 6
    const-string v3, "QAW_SHOW_ALL"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/wallet/ui/WalletUiEvent;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_SHOW_ALL:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 12
    .line 13
    new-instance v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x35d

    .line 17
    .line 18
    const-string v4, "QAW_UNLOCK_FROM_CARD_CLICK"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/wallet/ui/WalletUiEvent;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_UNLOCK_FROM_CARD_CLICK:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 24
    .line 25
    new-instance v2, Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const/16 v4, 0x35f

    .line 29
    .line 30
    const-string v5, "QAW_CHANGE_CARD"

    .line 31
    .line 32
    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/wallet/ui/WalletUiEvent;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_CHANGE_CARD:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 36
    .line 37
    new-instance v3, Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const/16 v5, 0x360

    .line 41
    .line 42
    const-string v6, "QAW_IMPRESSION"

    .line 43
    .line 44
    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/wallet/ui/WalletUiEvent;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_IMPRESSION:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 48
    .line 49
    new-instance v4, Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    const/16 v6, 0x361

    .line 53
    .line 54
    const-string v7, "QAW_CLICK_CARD"

    .line 55
    .line 56
    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/wallet/ui/WalletUiEvent;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_CLICK_CARD:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 60
    .line 61
    new-instance v5, Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 62
    .line 63
    const/4 v6, 0x5

    .line 64
    const/16 v7, 0x362

    .line 65
    .line 66
    const-string v8, "QAW_UNLOCK_FROM_UNLOCK_BUTTON"

    .line 67
    .line 68
    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/wallet/ui/WalletUiEvent;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v5, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_UNLOCK_FROM_UNLOCK_BUTTON:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 72
    .line 73
    new-instance v6, Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 74
    .line 75
    const/4 v7, 0x6

    .line 76
    const/16 v8, 0x363

    .line 77
    .line 78
    const-string v9, "QAW_UNLOCK_FROM_SHOW_ALL_BUTTON"

    .line 79
    .line 80
    invoke-direct {v6, v9, v7, v8}, Lcom/android/systemui/wallet/ui/WalletUiEvent;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    sput-object v6, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_UNLOCK_FROM_SHOW_ALL_BUTTON:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 84
    .line 85
    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/android/systemui/wallet/ui/WalletUiEvent;->$VALUES:[Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 90
    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/android/systemui/wallet/ui/WalletUiEvent;->mId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/wallet/ui/WalletUiEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/wallet/ui/WalletUiEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/wallet/ui/WalletUiEvent;->$VALUES:[Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/wallet/ui/WalletUiEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/wallet/ui/WalletUiEvent;->mId:I

    .line 2
    .line 3
    return p0
.end method
