.class public Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationList"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appName"
    .end annotation
.end field

.field private canReply:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "canReply"
    .end annotation
.end field

.field private fgs:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fgs"
    .end annotation
.end field

.field private notiID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notiID"
    .end annotation
.end field

.field private notiText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notiText"
    .end annotation
.end field

.field private notiTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notiTitle"
    .end annotation
.end field

.field private ongoing:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ongoing"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

.field private when:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "when"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiID:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiTitle:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiText:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->canReply:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->when:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->fgs:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->ongoing:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->appName:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFgs()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->fgs:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNotiCanReply()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->canReply:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNotiID()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNotiText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNotiTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOngoing()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->ongoing:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWhen()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->when:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNotiCanReply(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->canReply:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNotiID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNotiText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNotiTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
