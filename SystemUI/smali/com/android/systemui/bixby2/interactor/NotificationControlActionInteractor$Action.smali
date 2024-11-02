.class final enum Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum delete_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum goto_edgelighting:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum open_notification_panel:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum read_notification_withid:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum reply_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;


# direct methods
.method private static synthetic $values()[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;
    .locals 8

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->read_notification_withid:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->delete_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 4
    .line 5
    sget-object v2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->reply_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 6
    .line 7
    sget-object v3, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->open_notification_panel:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 8
    .line 9
    sget-object v4, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->goto_edgelighting:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 10
    .line 11
    sget-object v5, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 12
    .line 13
    sget-object v6, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 14
    .line 15
    sget-object v7, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

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
    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 2
    .line 3
    const-string/jumbo v1, "read_notification_withid"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->read_notification_withid:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 13
    .line 14
    const-string v1, "delete_notification"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->delete_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 21
    .line 22
    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 23
    .line 24
    const-string/jumbo v1, "reply_notification"

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->reply_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 32
    .line 33
    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 34
    .line 35
    const-string/jumbo v1, "open_notification_panel"

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->open_notification_panel:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 43
    .line 44
    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 45
    .line 46
    const-string v1, "goto_edgelighting"

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->goto_edgelighting:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 53
    .line 54
    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 55
    .line 56
    const-string/jumbo v1, "set_notification_permission"

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x5

    .line 60
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 64
    .line 65
    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 66
    .line 67
    const-string/jumbo v1, "set_notification_sound"

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x6

    .line 71
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 75
    .line 76
    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 77
    .line 78
    const-string/jumbo v1, "setoff_notification_permission"

    .line 79
    .line 80
    .line 81
    const/4 v2, 0x7

    .line 82
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 86
    .line 87
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->$values()[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 92
    .line 93
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 8
    .line 9
    return-object v0
.end method
