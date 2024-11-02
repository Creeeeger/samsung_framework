.class public Lcom/android/systemui/bixby2/controller/NotificationController$DisplayContentObject;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/controller/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayContentObject"
.end annotation


# instance fields
.field appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appName"
    .end annotation
.end field

.field notiCount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notiCount"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/NotificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/NotificationController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController$DisplayContentObject;->this$0:Lcom/android/systemui/bixby2/controller/NotificationController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/NotificationController$DisplayContentObject;->appName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/NotificationController$DisplayContentObject;->notiCount:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController$DisplayContentObject;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNotiCount()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController$DisplayContentObject;->notiCount:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController$DisplayContentObject;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNotiCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController$DisplayContentObject;->notiCount:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
