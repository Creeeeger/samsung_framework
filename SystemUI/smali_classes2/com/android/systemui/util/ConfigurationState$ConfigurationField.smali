.class public abstract enum Lcom/android/systemui/util/ConfigurationState$ConfigurationField;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ASSET_SEQ;,
        Lcom/android/systemui/util/ConfigurationState$ConfigurationField$DISPLAY_DEVICE_TYPE;,
        Lcom/android/systemui/util/ConfigurationState$ConfigurationField$LOCALE;,
        Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ORIENTATION;,
        Lcom/android/systemui/util/ConfigurationState$ConfigurationField$SCREEN_HEIGHT_DP;,
        Lcom/android/systemui/util/ConfigurationState$ConfigurationField$SCREEN_LAYOUT;,
        Lcom/android/systemui/util/ConfigurationState$ConfigurationField$THEME_SEQ;,
        Lcom/android/systemui/util/ConfigurationState$ConfigurationField$UI_MODE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/util/ConfigurationState$ConfigurationField;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum ASSET_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum SCREEN_LAYOUT:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum THEME_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

.field public static final enum UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ASSET_SEQ;

    .line 2
    .line 3
    const-string v1, "ASSET_SEQ"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ASSET_SEQ;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ASSET_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$DISPLAY_DEVICE_TYPE;

    .line 12
    .line 13
    const-string v2, "DISPLAY_DEVICE_TYPE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$DISPLAY_DEVICE_TYPE;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$LOCALE;

    .line 22
    .line 23
    const-string v3, "LOCALE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$LOCALE;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ORIENTATION;

    .line 30
    .line 31
    const-string v4, "ORIENTATION"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ORIENTATION;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 38
    .line 39
    new-instance v4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$SCREEN_HEIGHT_DP;

    .line 40
    .line 41
    const-string v5, "SCREEN_HEIGHT_DP"

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$SCREEN_HEIGHT_DP;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 48
    .line 49
    new-instance v5, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$SCREEN_LAYOUT;

    .line 50
    .line 51
    const-string v6, "SCREEN_LAYOUT"

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$SCREEN_LAYOUT;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    sput-object v5, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_LAYOUT:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 58
    .line 59
    new-instance v6, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$THEME_SEQ;

    .line 60
    .line 61
    const-string v7, "THEME_SEQ"

    .line 62
    .line 63
    const/4 v8, 0x6

    .line 64
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$THEME_SEQ;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v6, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->THEME_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 68
    .line 69
    new-instance v7, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$UI_MODE;

    .line 70
    .line 71
    const-string v8, "UI_MODE"

    .line 72
    .line 73
    const/4 v9, 0x7

    .line 74
    invoke-direct {v7, v8, v9}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$UI_MODE;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    sput-object v7, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 78
    .line 79
    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->$VALUES:[Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 84
    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/util/ConfigurationState$ConfigurationField;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/util/ConfigurationState$ConfigurationField;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->$VALUES:[Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract needToUpdate(Ljava/util/EnumMap;Landroid/content/res/Configuration;)Z
.end method

.method public abstract update(Ljava/util/EnumMap;Landroid/content/res/Configuration;)V
.end method
