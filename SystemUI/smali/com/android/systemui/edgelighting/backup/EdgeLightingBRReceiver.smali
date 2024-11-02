.class public Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_EDGELIGHTING"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "ACTION"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string p1, "EdgeLightingBRReceiver"

    .line 34
    .line 35
    const-string p2, "Cancel request"

    .line 36
    .line 37
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mHandler:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    .line 49
    .line 50
    invoke-direct {v0, p1, p2}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method
