.class public final Lcom/android/keyguard/KeyguardRMMViewController$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardRMMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardRMMViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

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
    .locals 2

    .line 1
    const-string/jumbo v0, "result"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/keyguard/KeyguardRMMViewController;->mHandler:Lcom/android/keyguard/KeyguardRMMViewController$4;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/keyguard/KeyguardRMMViewController;->mHandler:Lcom/android/keyguard/KeyguardRMMViewController$4;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mHandler:Lcom/android/keyguard/KeyguardRMMViewController$4;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
