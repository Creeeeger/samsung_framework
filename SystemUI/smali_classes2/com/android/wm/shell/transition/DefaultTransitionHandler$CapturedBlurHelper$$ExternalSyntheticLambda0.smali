.class public final synthetic Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v3, "com.samsung.android.action.SCREEN_ROTATION_ANIMATION_STARTED"

    .line 11
    .line 12
    invoke-direct {p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v3, "now"

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-virtual {p0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-wide/16 v3, 0x1e

    .line 25
    .line 26
    add-long/2addr v1, v3

    .line 27
    const-string v3, "duration"

    .line 28
    .line 29
    invoke-virtual {p0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;->this$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 37
    .line 38
    const-string v2, "com.samsung.android.permisson.SCREEN_ROTATION_ANIMATION_STARTED"

    .line 39
    .line 40
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
