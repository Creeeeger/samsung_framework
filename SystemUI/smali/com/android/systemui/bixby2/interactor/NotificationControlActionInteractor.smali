.class public Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/bixby2/interactor/ActionInteractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;,
        Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;,
        Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;,
        Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;
    }
.end annotation


# static fields
.field static final NOTI_ID:Ljava/lang/String; = "notiID"

.field static final NOTI_ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field static final NOTI_LIST:Ljava/lang/String; = "notificationList"

.field static final NOTI_REPLY:Ljava/lang/String; = "canReply"

.field static final NOTI_RESULT:Ljava/lang/String; = "result"

.field static final NOTI_TEXT:Ljava/lang/String; = "notiText"

.field static final NOTI_TITLE:Ljava/lang/String; = "notiTitle"

.field static final RESULT_ALREADY_TURNED_ON_NOTIFICATION:I = 0x20

.field static final RESULT_INTERRUPTED_BY_APP_NOTIFICATION_ALERTS:I = 0x8000

.field static final RESULT_INTERRUPTED_BY_DND:I = 0x1000

.field static final RESULT_INTERRUPTED_BY_NOTIFICATION_VOLUME:I = 0x4000

.field static final RESULT_INTERRUPTED_BY_RINGER_MODE:I = 0x2000

.field static final RESULT_INTERRUPTED_BY_USER_CHANGED:I = 0x10000

.field static final RESULT_NO_CHANNEL:I = 0x4

.field static final RESULT_NO_PERMISSION:I = 0x2

.field static final RESULT_TURNED_ON_APP_NOTIFICATION:I = 0x8

.field static final RESULT_TURNED_ON_NOTIFICATION_CHANNEL:I = 0x10

.field static final RESULT_UNKNOWN_CAUSE:I = 0x1


# instance fields
.field private DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mGson:Lcom/google/gson/Gson;

.field private final mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;


# direct methods
.method public static synthetic $r8$lambda$sH5FDRgTQXCK77ZdAdS0MipJSTQ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/NotificationController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NotificationControlActionInteractor"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 17
    .line 18
    new-instance p1, Lcom/google/gson/Gson;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    .line 24
    .line 25
    return-void
.end method

.method private isNotiPerformAction(Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->delete_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->reply_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p0, 0x0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 65
    :goto_1
    return p0
.end method

.method private static synthetic lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private matchAction(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method private respondCompleted(I)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "fail"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "AllIsOngoingNoti"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "NoMatchedAppName"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "NoNotificationExist"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 5
    :cond_3
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string/jumbo v0, "success"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method private respondCompleted(ILandroid/os/Bundle;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 9

    const/4 v0, 0x5

    .line 6
    const-class v1, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    const-string/jumbo v2, "notificationList"

    const-string v3, "itemCount"

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    const-string v6, "fail"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 7
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_3

    .line 8
    new-instance p1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;

    invoke-direct {p1, p0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;-><init>(Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;)V

    .line 9
    invoke-virtual {p1, v4}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setResult(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setItemCount(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    iget-boolean p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v5, p2, :cond_1

    .line 17
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiID()Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 19
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 20
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiCanReply()Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getWhen()Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getFgs()Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getOngoing()Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getAppName()Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setNotificationList(Ljava/util/List;)V

    .line 26
    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->getResult()Ljava/lang/String;

    .line 29
    :cond_2
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v8, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 30
    :cond_3
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_4
    if-eqz p2, :cond_8

    .line 31
    new-instance p1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;

    invoke-direct {p1, p0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;-><init>(Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;)V

    .line 32
    invoke-virtual {p1, v4}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setResult(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setItemCount(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    iget-boolean p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p2, :cond_5

    move p2, v5

    .line 39
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_5

    .line 40
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiID()Ljava/lang/String;

    .line 41
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 42
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 43
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiCanReply()Ljava/lang/String;

    .line 44
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getWhen()Ljava/lang/String;

    .line 45
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getFgs()Ljava/lang/String;

    .line 46
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getOngoing()Ljava/lang/String;

    .line 47
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getAppName()Ljava/lang/String;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 48
    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setNotificationList(Ljava/util/List;)V

    .line 49
    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->getDisplayDescription()Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 50
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    const-class v1, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v5, p2, :cond_6

    .line 53
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;->getAppName()Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;->getNotiCount()Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 55
    :cond_6
    invoke-virtual {p1, v0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setContentForDisplay(Ljava/util/List;)V

    .line 56
    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 57
    iget-boolean p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p0, :cond_7

    .line 58
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->getResult()Ljava/lang/String;

    .line 59
    :cond_7
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v8, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 60
    :cond_8
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getSupportingActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/util/List;

    .line 28
    .line 29
    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;)Lcom/samsung/android/sdk/command/Command;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->read_notification_withid:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "NotificationControlActionInteractor"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/bixby2/controller/NotificationController;->readNotificationWithID(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "result"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->respondCompleted(ILandroid/os/Bundle;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p1

    .line 6
    iget-boolean p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "responseMessage: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 8
    invoke-static {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    iget-object p1, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 11
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 12
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iput v3, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 14
    iput-object p0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 16
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->isNotiPerformAction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 17
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    new-instance p1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "JSONException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 20
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 21
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 22
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 24
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v1

    :cond_3
    return-object v1

    .line 26
    :cond_4
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->goto_edgelighting:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 27
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 28
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 31
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 34
    :cond_5
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->open_notification_panel:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 35
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 36
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 39
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 42
    :cond_6
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 43
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 44
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 47
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 50
    :cond_7
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 51
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 52
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 55
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 58
    :cond_8
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 59
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 60
    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 63
    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v1
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 2

    .line 75
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->read_notification_withid:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p3}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    check-cast p3, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    iget-object v0, p3, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    .line 78
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    move-result-object p1

    .line 79
    iget-object p3, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->readNotificationWithID(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p3, "result"

    .line 80
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 81
    invoke-direct {p0, p3, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->respondCompleted(ILandroid/os/Bundle;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p1

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "responseMessage: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    const-string v0, "NotificationControlActionInteractor"

    .line 84
    invoke-static {p0, p3, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    iget-object p1, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 87
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 88
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 89
    iput p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 90
    iput-object p0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "commandAction.getActionType() = "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "NotificationControlActionInteractor"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x5

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eq v0, v2, :cond_1

    .line 38
    .line 39
    move-object p2, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    check-cast p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->isNotiPerformAction(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-string/jumbo v2, "success"

    .line 50
    .line 51
    .line 52
    const-string v4, "fail"

    .line 53
    .line 54
    const/4 v5, 0x2

    .line 55
    const/4 v6, 0x1

    .line 56
    if-eqz v0, :cond_17

    .line 57
    .line 58
    invoke-static {p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    :cond_2
    const-string v0, " packageInfo is null"

    .line 73
    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_3
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->delete_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v0, "-- delete_notification --   packageName = "

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 102
    .line 103
    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->deleteNotification(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->respondCompleted(I)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :goto_1
    move-object v3, p1

    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :cond_4
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->reply_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 129
    .line 130
    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->notiID:Ljava/lang/String;

    .line 131
    .line 132
    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->MsgStr:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->replyNotification(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->respondCompleted(I)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    goto :goto_1

    .line 143
    :cond_5
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    const-string v7, "SetOnSoundNotification"

    .line 154
    .line 155
    const/16 v8, 0x8

    .line 156
    .line 157
    if-eqz v0, :cond_c

    .line 158
    .line 159
    const-string p1, "-- set_notification_permission --"

    .line 160
    .line 161
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    iget-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 165
    .line 166
    if-nez p1, :cond_6

    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->getFocusedPackageName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 175
    .line 176
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 177
    .line 178
    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkNotificationStatusForPackage(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    const-string p2, "checkNotificationStatusForPackage() result = "

    .line 185
    .line 186
    invoke-static {p2, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    if-ne p1, v5, :cond_7

    .line 190
    .line 191
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 192
    .line 193
    const-string p2, "NoCategoryNotification"

    .line 194
    .line 195
    invoke-direct {p1, v6, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_7
    const/4 p2, 0x4

    .line 200
    if-eq p1, p2, :cond_b

    .line 201
    .line 202
    const/16 p2, 0x20

    .line 203
    .line 204
    if-ne p1, p2, :cond_8

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_8
    if-ne p1, v8, :cond_9

    .line 208
    .line 209
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 210
    .line 211
    const-string p2, "SetOnSettingNotification"

    .line 212
    .line 213
    invoke-direct {p1, v6, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_9
    const/16 p2, 0x10

    .line 218
    .line 219
    if-ne p1, p2, :cond_a

    .line 220
    .line 221
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 222
    .line 223
    invoke-direct {p1, v6, v7}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_a
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 228
    .line 229
    invoke-direct {p1, v5, v4}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_b
    :goto_2
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 234
    .line 235
    const-string p2, "AlreadyOnSettingsNotification"

    .line 236
    .line 237
    invoke-direct {p1, v6, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_c
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_12

    .line 252
    .line 253
    const-string p1, "-- set_notification_sound --"

    .line 254
    .line 255
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    iget-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 259
    .line 260
    if-nez p1, :cond_d

    .line 261
    .line 262
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->getFocusedPackageName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iput-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 269
    .line 270
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 271
    .line 272
    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkNotificationSoundStatus(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    const-string p2, "checkNotificationSoundStatus() result = "

    .line 279
    .line 280
    invoke-static {p2, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    and-int/lit16 p2, p1, 0x2000

    .line 284
    .line 285
    if-eqz p2, :cond_e

    .line 286
    .line 287
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 288
    .line 289
    invoke-direct {p1, v6, v7}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :cond_e
    and-int/lit16 p2, p1, 0x1000

    .line 295
    .line 296
    if-eqz p2, :cond_f

    .line 297
    .line 298
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 299
    .line 300
    const-string p2, "SetOffDndNotification"

    .line 301
    .line 302
    invoke-direct {p1, v6, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_1

    .line 306
    .line 307
    :cond_f
    const p2, 0x8000

    .line 308
    .line 309
    .line 310
    and-int/2addr p2, p1

    .line 311
    if-eqz p2, :cond_10

    .line 312
    .line 313
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 314
    .line 315
    const-string p2, "SetOnSoundAppNotification"

    .line 316
    .line 317
    invoke-direct {p1, v6, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :cond_10
    const/high16 p2, 0x10000

    .line 323
    .line 324
    and-int/2addr p1, p2

    .line 325
    if-eqz p1, :cond_11

    .line 326
    .line 327
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 328
    .line 329
    const-string p2, "SetImportanceNotification"

    .line 330
    .line 331
    invoke-direct {p1, v6, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_1

    .line 335
    .line 336
    :cond_11
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 337
    .line 338
    invoke-direct {p1, v5, v4}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_1

    .line 342
    .line 343
    :cond_12
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-eqz p1, :cond_1a

    .line 354
    .line 355
    const-string p1, "-- setoff_notification_permission --"

    .line 356
    .line 357
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    iget-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 361
    .line 362
    if-nez p1, :cond_13

    .line 363
    .line 364
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 365
    .line 366
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->getFocusedPackageName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    iput-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 371
    .line 372
    :cond_13
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 373
    .line 374
    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->setNotificationTurnOffForPackage(Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    const-string/jumbo p2, "setNotificationTurnOffForPackage() result = "

    .line 381
    .line 382
    .line 383
    invoke-static {p2, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 384
    .line 385
    .line 386
    if-ne p1, v8, :cond_14

    .line 387
    .line 388
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 389
    .line 390
    const-string p2, "CanNotOffSettingNotification"

    .line 391
    .line 392
    invoke-direct {p1, v5, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_1

    .line 396
    .line 397
    :cond_14
    const/16 p2, 0x9

    .line 398
    .line 399
    if-ne p1, p2, :cond_15

    .line 400
    .line 401
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 402
    .line 403
    const-string p2, "already_set"

    .line 404
    .line 405
    invoke-direct {p1, v5, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_1

    .line 409
    .line 410
    :cond_15
    if-ne p1, v6, :cond_16

    .line 411
    .line 412
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 413
    .line 414
    invoke-direct {p1, v6, v2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_1

    .line 418
    .line 419
    :cond_16
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 420
    .line 421
    invoke-direct {p1, v5, v4}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :cond_17
    sget-object p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->open_notification_panel:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 427
    .line 428
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result p2

    .line 436
    if-eqz p2, :cond_18

    .line 437
    .line 438
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 439
    .line 440
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->openNotificationPanel()V

    .line 441
    .line 442
    .line 443
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 444
    .line 445
    invoke-direct {v3, v6, v2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 446
    .line 447
    .line 448
    goto :goto_3

    .line 449
    :cond_18
    sget-object p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->goto_edgelighting:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    .line 450
    .line 451
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result p1

    .line 459
    if-eqz p1, :cond_1a

    .line 460
    .line 461
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 462
    .line 463
    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mContext:Landroid/content/Context;

    .line 464
    .line 465
    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->goToNotiSettings(Landroid/content/Context;)Z

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    if-eqz p1, :cond_19

    .line 470
    .line 471
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 472
    .line 473
    invoke-direct {v3, v6, v2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 474
    .line 475
    .line 476
    goto :goto_3

    .line 477
    :cond_19
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 478
    .line 479
    invoke-direct {v3, v5, v4}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 480
    .line 481
    .line 482
    :cond_1a
    :goto_3
    if-nez v3, :cond_1b

    .line 483
    .line 484
    if-eqz p3, :cond_1d

    .line 485
    .line 486
    :cond_1b
    iget-boolean p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    .line 487
    .line 488
    if-eqz p0, :cond_1c

    .line 489
    .line 490
    new-instance p0, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    const-string/jumbo p1, "responseCode = "

    .line 493
    .line 494
    .line 495
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    iget p1, v3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 499
    .line 500
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string p1, ", responseMessage = "

    .line 504
    .line 505
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    iget-object p1, v3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 509
    .line 510
    invoke-static {p0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    :cond_1c
    iget p0, v3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 514
    .line 515
    iget-object p1, v3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 516
    .line 517
    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 518
    .line 519
    invoke-virtual {p3, p0, p1}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 520
    .line 521
    .line 522
    :cond_1d
    return-void
.end method
