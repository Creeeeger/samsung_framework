.class final enum Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

.field public static final enum share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;


# direct methods
.method private static synthetic $values()[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;
    .locals 9

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 4
    .line 5
    sget-object v2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 6
    .line 7
    sget-object v3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 8
    .line 9
    sget-object v4, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 10
    .line 11
    sget-object v5, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 12
    .line 13
    sget-object v6, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 14
    .line 15
    sget-object v7, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 16
    .line 17
    sget-object v8, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 2
    .line 3
    const-string v1, "goto_homescreen"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 12
    .line 13
    const-string v1, "back"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 20
    .line 21
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 22
    .line 23
    const-string v1, "capture_screen"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 30
    .line 31
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 32
    .line 33
    const-string/jumbo v1, "share_screenshot"

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 41
    .line 42
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 43
    .line 44
    const-string/jumbo v1, "share_screenshot_uri"

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 52
    .line 53
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 54
    .line 55
    const-string/jumbo v1, "set_brightness"

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x5

    .line 59
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 63
    .line 64
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 65
    .line 66
    const-string/jumbo v1, "scroll_up_down"

    .line 67
    .line 68
    .line 69
    const/4 v2, 0x6

    .line 70
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 74
    .line 75
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 76
    .line 77
    const-string v1, "auto_brightness_cover"

    .line 78
    .line 79
    const/4 v2, 0x7

    .line 80
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 84
    .line 85
    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 86
    .line 87
    const-string v1, "close_panelscreen"

    .line 88
    .line 89
    const/16 v2, 0x8

    .line 90
    .line 91
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 95
    .line 96
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->$values()[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sput-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 101
    .line 102
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    .line 8
    .line 9
    return-object v0
.end method
