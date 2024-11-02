.class public final Lcom/samsung/android/knox/foresight/KnoxForesight$2;
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
    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

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
    .locals 3

    .line 1
    const-string p1, "error"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p2, "SUCCESS"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v0, "com.samsung.android.knox.foresight.COMMAND"

    .line 20
    .line 21
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->eventReceiver:Landroid/content/ComponentName;

    .line 27
    .line 28
    const-string v1, "eventReceiver"

    .line 29
    .line 30
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v0, "com.samsung.android.knox.foresight"

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->connection:Landroid/content/ServiceConnection;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/foresight/KnoxForesight;->notifyCallbacks(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 55
    .line 56
    iget-object p2, p2, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, "Download failed. Reason : "

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/foresight/KnoxForesight;->notifyCallbacks(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method
