.class public Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field private contentForDisplay:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentForDisplay"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;",
            ">;"
        }
    .end annotation
.end field

.field private itemCount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemCount"
    .end annotation
.end field

.field private notificationContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notificationContent"
    .end annotation
.end field

.field private notificationList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notificationList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->result:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->notificationContent:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->itemCount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentForDisplay()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->contentForDisplay:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemCount()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->itemCount:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNotificationContent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->notificationContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNotificationList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->notificationList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getResult()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->result:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setContentForDisplay(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->contentForDisplay:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setItemCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->itemCount:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNotificationContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->notificationContent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNotificationList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->notificationList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->result:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
