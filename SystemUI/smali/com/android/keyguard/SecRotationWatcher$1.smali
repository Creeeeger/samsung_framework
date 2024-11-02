.class public final Lcom/android/keyguard/SecRotationWatcher$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecRotationWatcher;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecRotationWatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/SecRotationWatcher$1;->this$0:Lcom/android/keyguard/SecRotationWatcher;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/keyguard/SecRotationWatcher$1;->this$0:Lcom/android/keyguard/SecRotationWatcher;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/keyguard/SecRotationWatcher;->mHandler:Lcom/android/keyguard/SecRotationWatcher$2;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/keyguard/SecRotationWatcher$1;->this$0:Lcom/android/keyguard/SecRotationWatcher;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/keyguard/SecRotationWatcher;->mHandler:Lcom/android/keyguard/SecRotationWatcher$2;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
