.class public final Lcom/android/keyguard/SecRotationWatcher$2;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecRotationWatcher;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecRotationWatcher;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/SecRotationWatcher$2;->this$0:Lcom/android/keyguard/SecRotationWatcher;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/SecRotationWatcher$2;->this$0:Lcom/android/keyguard/SecRotationWatcher;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/keyguard/SecRotationWatcher;->mCurrentRotation:I

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/keyguard/SecRotationWatcher;->mListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Lcom/android/keyguard/SecRotationWatcher$2$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/android/keyguard/SecRotationWatcher$2$$ExternalSyntheticLambda0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
