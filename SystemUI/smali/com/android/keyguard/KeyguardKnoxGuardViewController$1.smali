.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "result"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string/jumbo v1, "timeout"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Unlock attempt result : "

    .line 18
    .line 19
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, " timeout : "

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v3, "KeyguardKnoxGuardView"

    .line 38
    .line 39
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v3, v0, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method
