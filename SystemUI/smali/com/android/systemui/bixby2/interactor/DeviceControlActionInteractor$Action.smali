.class final enum Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

.field public static final enum turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;


# direct methods
.method private static synthetic $values()[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;
    .locals 8

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 4
    .line 5
    sget-object v2, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 6
    .line 7
    sget-object v3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 8
    .line 9
    sget-object v4, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 10
    .line 11
    sget-object v5, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 12
    .line 13
    sget-object v6, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 14
    .line 15
    sget-object v7, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 2
    .line 3
    const-string/jumbo v1, "power_off"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 13
    .line 14
    const-string/jumbo v1, "reboot"

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 22
    .line 23
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 24
    .line 25
    const-string/jumbo v1, "turnoff_screen"

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 33
    .line 34
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 35
    .line 36
    const-string/jumbo v1, "set_flashlight"

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 44
    .line 45
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 46
    .line 47
    const-string/jumbo v1, "set_flashlight_level"

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x4

    .line 51
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 55
    .line 56
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 57
    .line 58
    const-string/jumbo v1, "set_autorotate"

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 66
    .line 67
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 68
    .line 69
    const-string/jumbo v1, "set_landscapemode"

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x6

    .line 73
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 77
    .line 78
    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 79
    .line 80
    const-string/jumbo v1, "set_portraitmode"

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x7

    .line 84
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 88
    .line 89
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->$values()[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 94
    .line 95
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    .line 8
    .line 9
    return-object v0
.end method
