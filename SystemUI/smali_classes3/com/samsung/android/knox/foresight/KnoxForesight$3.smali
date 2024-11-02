.class public final Lcom/samsung/android/knox/foresight/KnoxForesight$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/foresight/KnoxForesight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/foresight/KnoxForesight;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$3;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$3;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "Event intent comes"

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string p1, "event"

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$3;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/foresight/KnoxForesight;->notifyCallbacks(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
