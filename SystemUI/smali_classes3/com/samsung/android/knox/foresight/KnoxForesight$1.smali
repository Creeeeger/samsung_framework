.class public final Lcom/samsung/android/knox/foresight/KnoxForesight$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$1;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$1;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Service connected!! : "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$1;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p1, Lcom/samsung/android/knox/foresight/KnoxForesight;->iBinder:Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$1;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/knox/foresight/KnoxForesight;->sendLastCommand()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$1;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Service disconnected!! : "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method
